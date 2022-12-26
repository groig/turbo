defmodule TurboWeb.RideReservationControllerTest do
  use TurboWeb.ConnCase

  import Turbo.RidesFixtures

  alias Turbo.Rides.RideReservation
  alias Turbo.Repo
  alias Turbo.Customers.Customer
  alias Turbo.Accounts.User
  alias TurboWeb.Auth

  @create_attrs %{
    baggage: true,
    car_type: :standard,
    end_location: %{
      coordinates: [-82.398, 23.137],
      type: "Point"
    },
    start_location: %{
      coordinates: [-82.398, 23.137],
      type: "Point"
    },
    name: "some name",
    passenger_amount: 42,
    identity_card: "some identity_card"
  }
  @update_attrs %{
    baggage: false,
    car_type: :comfort,
    end_location: %{
      coordinates: [-82.398, 23.137],
      type: "Point"
    },
    start_location: %{
      coordinates: [-82.398, 23.137],
      type: "Point"
    },
    identity_card: "some updated identity_card",
    name: "some updated name",
    passenger_amount: 43
  }
  @invalid_attrs %{
    baggage: nil,
    car_type: nil,
    end_location: nil,
    identity_card: nil,
    name: nil,
    passenger_amount: nil,
    start_location: nil
  }

  setup %{conn: conn} do
    %{conn: conn} = register_and_log_in_customer(%{conn: conn})
    {:ok, conn: put_req_header(conn, "accept", "application/json")}
  end

  describe "index" do
    test "lists all reservations", %{conn: conn} do
      conn = get(conn, Routes.ride_reservation_path(conn, :index)) |> doc
      assert json_response(conn, 200)["data"] == []
    end
  end

  describe "create ride_reservation" do
    test "renders ride_reservation when data is valid", %{conn: conn} do
      conn =
        post(conn, Routes.ride_reservation_path(conn, :create), ride_reservation: @create_attrs)
        |> doc

      assert %{"id" => id} = json_response(conn, 201)["data"]

      conn = get(conn, Routes.ride_reservation_path(conn, :show, id)) |> doc

      assert %{
               "id" => ^id,
               "baggage" => true,
               "car_type" => "standard",
               "identity_card" => "some identity_card",
               "name" => "some name",
               "passenger_amount" => 42
             } = json_response(conn, 200)["data"]
    end

    test "renders errors when data is invalid", %{conn: conn} do
      conn =
        post(conn, Routes.ride_reservation_path(conn, :create), ride_reservation: @invalid_attrs)
        |> doc

      assert json_response(conn, 422)["errors"] != %{}
    end
  end

  describe "update ride_reservation" do
    setup [:create_ride_reservation]

    test "renders ride_reservation when data is valid", %{
      conn: conn,
      ride_reservation: %RideReservation{id: id} = ride_reservation
    } do
      conn =
        put(conn, Routes.ride_reservation_path(conn, :update, ride_reservation),
          ride_reservation: @update_attrs
        )
        |> doc

      assert %{"id" => ^id} = json_response(conn, 200)["data"]

      conn = get(conn, Routes.ride_reservation_path(conn, :show, id)) |> doc

      assert %{
               "id" => ^id,
               "baggage" => false,
               "car_type" => "comfort",
               "identity_card" => "some updated identity_card",
               "name" => "some updated name",
               "passenger_amount" => 43
             } = json_response(conn, 200)["data"]
    end

    test "renders errors when data is invalid", %{conn: conn, ride_reservation: ride_reservation} do
      conn =
        put(conn, Routes.ride_reservation_path(conn, :update, ride_reservation),
          ride_reservation: @invalid_attrs
        )
        |> doc

      assert json_response(conn, 422)["errors"] != %{}
    end
  end

  describe "delete ride_reservation" do
    setup [:create_ride_reservation]

    test "deletes chosen ride_reservation", %{conn: conn, ride_reservation: ride_reservation} do
      conn = delete(conn, Routes.ride_reservation_path(conn, :delete, ride_reservation)) |> doc
      assert response(conn, 204)

      assert_error_sent 404, fn ->
        get(conn, Routes.ride_reservation_path(conn, :show, ride_reservation)) |> doc
      end
    end
  end

  defp create_ride_reservation(_) do
    ride_reservation = ride_reservation_fixture()
    owner = Repo.get!(Customer, ride_reservation.customer_id)
    owner_user = Repo.get!(User, owner.user_id)
    owner_token = Auth.log_in_user(owner_user)

    conn =
      build_conn()
      |> put_req_header("accept", "application/json")
      |> put_req_header("authorization", "Bearer #{owner_token}")

    %{ride_reservation: ride_reservation, conn: conn}
  end
end
