defmodule TurboWeb.RideRequestControllerTest do
  use TurboWeb.ConnCase
  alias Turbo.RidesFixtures

  @invalid_attrs %{start_location: nil, end_location: nil}

  setup %{conn: conn} do
    {:ok, conn: put_req_header(conn, "accept", "application/json")}
  end

  describe "create ride_request" do
    test "renders ride_request when data is valid", %{conn: conn} do
      %{conn: conn} = register_and_log_in_customer(%{conn: conn})
      ride_request = RidesFixtures.ride_request_fixture()

      create_attrs = %{
        start_location: %{
          "coordinates" => [30.2, 20.3],
          "type" => "Point"
        },
        end_location: %{
          "coordinates" => [30.2, 20.3],
          "type" => "Point"
        },
        ride_request_id: ride_request.id
      }

      TurboWeb.Endpoint.subscribe("rides:lobby")

      conn =
        post(conn, Routes.ride_request_path(conn, :create), ride_request: create_attrs) |> doc

      assert %{"id" => id} = json_response(conn, 201)["data"]

      assert_receive %Phoenix.Socket.Broadcast{
        event: "request:created",
        payload: %{id: ^id}
      }
    end

    test "renders errors when data is invalid", %{conn: conn} do
      %{conn: conn} = register_and_log_in_customer(%{conn: conn})

      conn =
        post(conn, Routes.ride_request_path(conn, :create), ride_request: @invalid_attrs) |> doc

      assert json_response(conn, 422)["errors"] != %{}
    end
  end

  describe "accept ride_request" do
    test "renders ride_request when accepting proccess is successfull", %{conn: conn} do
      %{conn: conn, driver: driver} = register_and_log_in_driver(%{conn: conn})

      ride_request = RidesFixtures.ride_request_fixture()
      id = ride_request.id
      customer = Turbo.Customers.get_customer!(ride_request.customer_id)

      TurboWeb.Endpoint.subscribe("rides:lobby")
      TurboWeb.Endpoint.subscribe("user:" <> driver.user_id)
      TurboWeb.Endpoint.subscribe("user:" <> customer.user_id)

      conn = put(conn, Routes.ride_request_path(conn, :accept, ride_request.id)) |> doc

      assert_receive %Phoenix.Socket.Broadcast{
        event: "request:accepted",
        payload: %{id: ^id}
      }

      assert_receive %Phoenix.Socket.Broadcast{
        event: "ride:created",
        payload: %{id: _ride_id}
      }

      assert_receive %Phoenix.Socket.Broadcast{
        event: "ride:created",
        payload: %{id: _ride_id}
      }

      assert %{"id" => _id} = json_response(conn, 204)["data"]
    end

    test "cant accept an already accepted ride request", %{conn: conn} do
      %{conn: conn} = register_and_log_in_driver(%{conn: conn})
      ride_request = RidesFixtures.ride_request_fixture()

      conn = put(conn, Routes.ride_request_path(conn, :accept, ride_request.id)) |> doc

      assert %{"id" => _id} = json_response(conn, 204)["data"]

      conn = put(conn, Routes.ride_request_path(conn, :accept, ride_request.id)) |> doc

      assert json_response(conn, 422)["errors"] != %{}
    end
  end
end
