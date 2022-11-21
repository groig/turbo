defmodule TurboWeb.RideController do
  use TurboWeb, :controller

  alias Turbo.Rides
  alias Turbo.Rides.Ride

  action_fallback TurboWeb.FallbackController

  plug :require_customer, [] when action in [:create]

  def index(%{assigns: %{current_user: %{type: :admin}}} = conn, _params) do
    rides = Rides.list_rides()
    render(conn, "index.json", rides: rides)
  end

  def index(%{assigns: %{current_user: %{type: :customer}}} = conn, _params) do
    rides = Rides.list_rides_for_customer(conn.assigns.current_user.customer.id)
    render(conn, "index.json", rides: rides)
  end

  def index(%{assigns: %{current_user: %{type: :driver}}} = conn, _params) do
    rides = Rides.list_rides_for_driver(conn.assigns.current_user.driver.id)
    render(conn, "index.json", rides: rides)
  end

  def show(%{assigns: %{current_user: %{type: :admin}}} = conn, %{"id" => id}) do
    ride = Rides.get_ride!(id)
    render(conn, "show.json", ride: ride)
  end

  def show(%{assigns: %{current_user: %{type: :customer}}} = conn, %{"id" => id}) do
    ride = Rides.get_ride_for_customer!(id, conn.assigns.current_user.customer.id)
    render(conn, "show.json", ride: ride)
  end

  def show(%{assigns: %{current_user: %{type: :driver}}} = conn, %{"id" => id}) do
    ride = Rides.get_ride_for_driver!(id, conn.assigns.current_user.driver.id)
    render(conn, "show.json", ride: ride)
  end

  def update(
        %{assigns: %{current_user: %{type: :customer}}} = conn,
        %{
          "id" => id,
          "customer_route" => _route
        } = route_params
      ) do
    with %Ride{} = ride <-
           Rides.get_ride_for_customer!(id, conn.assigns.current_user.customer.id),
         {:ok, ride} <- Rides.set_customer_route(ride, route_params) do
      render(conn, "show.json", ride: ride, type: :customer)
    end
  end

  def update(
        %{assigns: %{current_user: %{type: :driver}}} = conn,
        %{"id" => id, "driver_route" => _route} = route_params
      ) do
    with %Ride{} = ride <- Rides.get_ride_for_driver!(id, conn.assigns.current_user.driver.id),
         {:ok, ride} <- Rides.set_driver_route(ride, route_params) do
      render(conn, "show.json", ride: ride, type: :driver)
    end
  end
end
