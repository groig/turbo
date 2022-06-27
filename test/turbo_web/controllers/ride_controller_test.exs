defmodule TurboWeb.RideControllerTest do
  use TurboWeb.ConnCase, async: true

  alias Turbo.CustomersFixtures

  import Turbo.RidesFixtures

  alias Turbo.Rides.Ride

  @update_attrs %{}
  @invalid_attrs %{customer_id: nil}

  setup %{conn: conn} do
    {:ok, conn: put_req_header(conn, "accept", "application/json")}
  end

  describe "index" do
    test "lists all rides", %{conn: conn} do
      conn = get(conn, Routes.ride_path(conn, :index))
      assert json_response(conn, 200)["data"] == []
    end
  end

  describe "create ride" do
    test "renders ride when data is valid", %{conn: conn} do
      customer = CustomersFixtures.customer_fixture()

      attrs = %{
        customer_id: customer.id,
        start_location: %{
          "coordinates" => [30.2, 20.3],
          "type" => "Point"
        }
      }

      conn = post(conn, Routes.ride_path(conn, :create), ride: attrs)
      assert %{"id" => id} = json_response(conn, 201)["data"]

      conn = get(conn, Routes.ride_path(conn, :show, id))

      assert %{
               "id" => ^id
             } = json_response(conn, 200)["data"]
    end

    test "renders errors when data is invalid", %{conn: conn} do
      conn = post(conn, Routes.ride_path(conn, :create), ride: @invalid_attrs)
      assert json_response(conn, 422)["errors"] != %{}
    end
  end

  describe "update ride" do
    setup [:create_ride]

    test "renders ride when data is valid", %{conn: conn, ride: %Ride{id: id} = ride} do
      conn = put(conn, Routes.ride_path(conn, :update, ride), ride: @update_attrs)
      assert %{"id" => ^id} = json_response(conn, 200)["data"]

      conn = get(conn, Routes.ride_path(conn, :show, id))

      assert %{
               "id" => ^id
             } = json_response(conn, 200)["data"]
    end

    test "renders errors when data is invalid", %{conn: conn, ride: ride} do
      conn = put(conn, Routes.ride_path(conn, :update, ride), ride: @invalid_attrs)
      assert json_response(conn, 422)["errors"] != %{}
    end
  end

  describe "delete ride" do
    setup [:create_ride]

    test "deletes chosen ride", %{conn: conn, ride: ride} do
      conn = delete(conn, Routes.ride_path(conn, :delete, ride))
      assert response(conn, 204)

      assert_error_sent 404, fn ->
        get(conn, Routes.ride_path(conn, :show, ride))
      end
    end
  end

  defp create_ride(_) do
    ride = ride_fixture()
    %{ride: ride}
  end
end
