defmodule TurboWeb.RideRequestController do
  use TurboWeb, :controller

  alias Turbo.Rides
  alias Turbo.Rides.RideRequest

  action_fallback TurboWeb.FallbackController

  plug :require_customer

  def create(conn, %{"ride_request" => ride_request_params}) do
    ride_request_params =
      Map.put(ride_request_params, "customer_id", conn.assigns.current_user.customer.id)

    with {:ok, %RideRequest{} = ride_request} <- Rides.create_ride_request(ride_request_params) do
      conn
      |> put_status(:created)
      |> render("show.json", ride_request: ride_request)
    end
  end
end
