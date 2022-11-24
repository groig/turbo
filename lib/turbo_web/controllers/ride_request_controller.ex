defmodule TurboWeb.RideRequestController do
  use TurboWeb, :controller

  alias Turbo.Rides
  alias Turbo.Rides.RideRequest

  action_fallback TurboWeb.FallbackController

  plug :require_customer, [] when action == :create
  plug :require_driver, [] when action == :accept

  def create(conn, %{"ride_request" => ride_request_params}) do
    ride_request_params =
      Map.put(ride_request_params, "customer_id", conn.assigns.current_user.customer.id)

    with {:ok, %RideRequest{} = ride_request} <- Rides.create_ride_request(ride_request_params) do
      conn
      |> put_status(:created)
      |> render("show.json", ride_request: ride_request)
    end
  end

  def accept(conn, %{"id" => id}) do
    with {:ok, %RideRequest{} = ride_request} <-
           Rides.accept_ride_request(id, conn.assigns.current_user.driver.id) do
      conn
      |> put_status(204)
      |> render("show.json", ride_request: ride_request)
    end
  end
end
