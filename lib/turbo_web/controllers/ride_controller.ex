defmodule TurboWeb.RideController do
  use TurboWeb, :controller

  alias Turbo.Rides
  alias Turbo.Rides.Ride

  action_fallback TurboWeb.FallbackController

  plug :require_customer, [] when action in [:create, :update]

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

  def create(conn, ride_params) do
    ride_params = Map.put(ride_params, "customer_id", conn.assigns.current_user.customer.id)

    with {:ok, %Ride{} = ride} <- Rides.create_ride(ride_params) do
      conn
      |> put_status(:created)
      |> put_resp_header("location", Routes.ride_path(conn, :show, ride))
      |> render("show.json", ride: ride)
    end
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
end
