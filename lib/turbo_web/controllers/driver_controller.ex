defmodule TurboWeb.DriverController do
  use TurboWeb, :controller

  alias Turbo.Drivers

  action_fallback TurboWeb.FallbackController

  plug :require_driver, [] when action in [:license, :location]

  def index(%{assigns: %{current_user: %{type: :admin}}} = conn, _params) do
    drivers = Drivers.list_drivers()
    render(conn, "index.json", drivers: drivers)
  end

  def index(%{assigns: %{current_user: %{type: :customer}}} = conn, _params) do
    drivers = Drivers.list_located_drivers()
    render(conn, "index.json", drivers: drivers)
  end

  def index(%{assigns: %{current_user: %{type: :driver}}} = conn, _params) do
    render(conn, "index.json", drivers: [conn.assigns.current_user.driver])
  end

  def show(%{assigns: %{current_user: %{type: :admin}}} = conn, %{"id" => id}) do
    render(conn, "show.json", driver: Drivers.get_driver!(id))
  end

  def show(%{assigns: %{current_user: %{type: :driver}}} = conn, %{"id" => id}) do
    if id == conn.assigns.current_user.driver.id do
      render(conn, "show.json", driver: Drivers.get_driver!(id))
    else
      conn
      |> put_resp_content_type("application/json")
      |> send_resp(404, Jason.encode!("Not Found"))
      |> halt()
    end
  end

  def license(conn, %{"license" => _license} = params) do
    driver = conn.assigns.current_user.driver

    with {:ok, _} <-
           Drivers.change_license(driver, params) do
      conn
      |> put_view(TurboWeb.MessageView)
      |> render("message.json",
        message: "Driver license updated successfully"
      )
    end
  end

  def location(conn, %{"last_location" => _location} = location_params) do
    with {:ok, driver} <-
           Drivers.set_driver_location(conn.assigns.current_user.driver, location_params) do
      render(conn, "location.json", location: driver.last_location)
    end
  end
end
