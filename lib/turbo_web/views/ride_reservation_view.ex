defmodule TurboWeb.RideReservationView do
  use TurboWeb, :view
  alias TurboWeb.RideReservationView

  def render("index.json", %{reservations: reservations}) do
    %{data: render_many(reservations, RideReservationView, "ride_reservation.json")}
  end

  def render("show.json", %{ride_reservation: ride_reservation}) do
    %{data: render_one(ride_reservation, RideReservationView, "ride_reservation.json")}
  end

  def render("ride_reservation.json", %{ride_reservation: ride_reservation}) do
    %{
      id: ride_reservation.id,
      name: ride_reservation.name,
      identity_card: ride_reservation.identity_card,
      start_location: ride_reservation.start_location,
      end_location: ride_reservation.end_location,
      baggage: ride_reservation.baggage,
      passenger_amount: ride_reservation.passenger_amount,
      car_type: ride_reservation.car_type
    }
  end
end
