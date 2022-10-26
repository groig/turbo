defmodule TurboWeb.RideView do
  use TurboWeb, :view
  alias TurboWeb.RideView

  def render("index.json", %{rides: rides}) do
    %{data: render_many(rides, RideView, "ride.json")}
  end

  def render("show.json", %{ride: ride}) do
    %{data: render_one(ride, RideView, "ride.json")}
  end

  def render("ride.json", %{ride: ride}) do
    %{
      id: ride.id,
      start_time: ride.start_time,
      end_time: ride.end_time,
      customer_rating: ride.customer_rating,
      driver_rating: ride.driver_rating,
      customer_route: ride.customer_route,
      driver_route: ride.driver_route
    }
  end
end
