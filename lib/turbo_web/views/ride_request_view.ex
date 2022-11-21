defmodule TurboWeb.RideRequestView do
  use TurboWeb, :view
  alias TurboWeb.RideRequestView

  def render("show.json", %{ride_request: ride_request}) do
    %{data: render_one(ride_request, RideRequestView, "ride_request.json")}
  end

  def render("ride_request.json", %{ride_request: ride_request}) do
    %{
      id: ride_request.id,
      start_location: ride_request.start_location
    }
  end
end
