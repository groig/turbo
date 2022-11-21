defmodule TurboWeb.RideRequestControllerTest do
  use TurboWeb.ConnCase

  @create_attrs %{
    start_location: %{
      "coordinates" => [30.2, 20.3],
      "type" => "Point"
    }
  }

  @invalid_attrs %{start_location: nil}

  setup %{conn: conn} do
    %{conn: conn} = register_and_log_in_customer(%{conn: conn})
    {:ok, conn: put_req_header(conn, "accept", "application/json")}
  end

  describe "create ride_request" do
    test "renders ride_request when data is valid", %{conn: conn} do
      conn =
        post(conn, Routes.ride_request_path(conn, :create), ride_request: @create_attrs) |> doc

      assert %{"id" => _id} = json_response(conn, 201)["data"]
    end

    test "renders errors when data is invalid", %{conn: conn} do
      conn = post(conn, Routes.ride_request_path(conn, :create), ride_request: @invalid_attrs)
      assert json_response(conn, 422)["errors"] != %{}
    end
  end
end
