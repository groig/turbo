defmodule TurboWeb.RideControllerTest do
  use TurboWeb.ConnCase, async: true

  import Turbo.RidesFixtures

  setup %{conn: conn} do
    {:ok, conn: put_req_header(conn, "accept", "application/json")}
  end

  describe "index" do
    test "lists all rides for admins", %{conn: conn} do
      %{conn: conn} = register_and_log_in_admin(%{conn: conn})
      ride_fixture()
      ride_fixture()
      ride_fixture()
      conn = get(conn, Routes.ride_path(conn, :index)) |> doc
      assert length(json_response(conn, 200)["data"]) == 3
    end

    test "lists rides for customer", %{conn: conn} do
      %{conn: conn, customer: customer} = register_and_log_in_customer(%{conn: conn})
      ride_fixture(%{customer_id: customer.id})
      ride_fixture()
      ride_fixture()
      conn = get(conn, Routes.ride_path(conn, :index)) |> doc
      assert length(json_response(conn, 200)["data"]) == 1
    end

    test "lists rides for drivers", %{conn: conn} do
      %{conn: conn, driver: driver} = register_and_log_in_driver(%{conn: conn})
      ride_fixture(%{driver_id: driver.id})
      ride_fixture(%{driver_id: driver.id})
      ride_fixture()
      ride_fixture()
      conn = get(conn, Routes.ride_path(conn, :index)) |> doc
      assert length(json_response(conn, 200)["data"]) == 2
    end
  end

  describe "show ride" do
    test "renders any ride to the admin", %{conn: conn} do
      %{conn: conn} = register_and_log_in_admin(%{conn: conn})
      ride1 = ride_fixture()
      ride2 = ride_fixture()
      conn = get(conn, Routes.ride_path(conn, :show, ride1.id)) |> doc
      assert json_response(conn, 200)["data"]["id"] == ride1.id
      conn = get(conn, Routes.ride_path(conn, :show, ride2.id)) |> doc
      assert json_response(conn, 200)["data"]["id"] == ride2.id
    end

    test "renders own rides to the customer", %{conn: conn} do
      %{conn: conn, customer: customer} = register_and_log_in_customer(%{conn: conn})
      ride1 = ride_fixture(%{customer_id: customer.id})
      ride2 = ride_fixture()
      conn = get(conn, Routes.ride_path(conn, :show, ride1.id)) |> doc
      assert json_response(conn, 200)["data"]["id"] == ride1.id
      assert_error_sent 404, fn -> get(conn, Routes.ride_path(conn, :show, ride2.id)) |> doc end
    end

    test "renders own rides to the driver", %{conn: conn} do
      %{conn: conn, driver: driver} = register_and_log_in_driver(%{conn: conn})
      ride1 = ride_fixture(%{driver_id: driver.id})
      ride2 = ride_fixture()
      conn = get(conn, Routes.ride_path(conn, :show, ride1.id)) |> doc
      assert json_response(conn, 200)["data"]["id"] == ride1.id
      assert_error_sent 404, fn -> get(conn, Routes.ride_path(conn, :show, ride2.id)) |> doc end
    end
  end

  describe "set ride route" do
    test "sets the ride route for a driver", %{conn: conn} do
      %{conn: conn, driver: driver} = register_and_log_in_driver(%{conn: conn})
      ride = ride_fixture(%{driver_id: driver.id})
      route = %{coordinates: [[20, 60], [56, 24], [52.0, 81]], type: "LineString"}
      conn = put(conn, Routes.ride_path(conn, :update, ride.id), %{driver_route: route}) |> doc
      response = json_response(conn, 200)
      assert response["data"]["id"] == ride.id
      assert response["data"]["driver_route"] != :null
    end

    test "sets the ride route for a customer", %{conn: conn} do
      %{conn: conn, customer: customer} = register_and_log_in_customer(%{conn: conn})
      ride = ride_fixture(%{customer_id: customer.id})
      route = %{coordinates: [[20, 60], [56, 24], [52.0, 81]], type: "LineString"}
      conn = put(conn, Routes.ride_path(conn, :update, ride.id), %{customer_route: route}) |> doc
      response = json_response(conn, 200)
      assert response["data"]["id"] == ride.id
      assert response["data"]["customer_route"] != :null
    end
  end
end
