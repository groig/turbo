defmodule TurboWeb.RideReservationController do
  use TurboWeb, :controller

  alias Turbo.Rides
  alias Turbo.Rides.RideReservation

  action_fallback TurboWeb.FallbackController
  plug :require_customer

  def index(conn, _params) do
    reservations = Rides.list_reservations(conn.assigns.current_user.customer.id)
    render(conn, "index.json", reservations: reservations)
  end

  def create(conn, %{"ride_reservation" => ride_reservation_params}) do
    ride_reservation_params =
      Map.put(ride_reservation_params, "customer_id", conn.assigns.current_user.customer.id)

    with {:ok, %RideReservation{} = ride_reservation} <-
           Rides.create_ride_reservation(ride_reservation_params) do
      conn
      |> put_status(:created)
      |> put_resp_header("location", Routes.ride_reservation_path(conn, :show, ride_reservation))
      |> render("show.json", ride_reservation: ride_reservation)
    end
  end

  def show(conn, %{"id" => id}) do
    ride_reservation = Rides.get_ride_reservation!(id, conn.assigns.current_user.customer.id)
    render(conn, "show.json", ride_reservation: ride_reservation)
  end

  def update(conn, %{"id" => id, "ride_reservation" => ride_reservation_params}) do
    ride_reservation = Rides.get_ride_reservation!(id, conn.assigns.current_user.customer.id)

    with {:ok, %RideReservation{} = ride_reservation} <-
           Rides.update_ride_reservation(ride_reservation, ride_reservation_params) do
      render(conn, "show.json", ride_reservation: ride_reservation)
    end
  end

  def delete(conn, %{"id" => id}) do
    ride_reservation = Rides.get_ride_reservation!(id, conn.assigns.current_user.customer.id)

    with {:ok, %RideReservation{}} <- Rides.delete_ride_reservation(ride_reservation) do
      send_resp(conn, :no_content, "")
    end
  end
end
