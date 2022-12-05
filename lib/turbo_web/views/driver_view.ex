defmodule TurboWeb.DriverView do
  use TurboWeb, :view
  alias TurboWeb.DriverView

  def render("index.json", %{drivers: drivers}) do
    %{data: render_many(drivers, DriverView, "driver.json")}
  end

  def render("drivers_for_map.json", %{drivers: drivers}) do
    %{data: render_many(drivers, DriverView, "driver_for_map.json")}
  end

  def render("show.json", %{driver: driver}) do
    %{data: render_one(driver, DriverView, "driver.json")}
  end

  def render("driver.json", %{driver: driver}) do
    %{
      id: driver.id,
      name: driver.user.name,
      email: driver.user.email,
      phone: driver.user.phone,
      credit: driver.wallet.credit
    }
  end

  def render("driver_for_map.json", %{driver: driver}) do
    %{
      id: driver.id,
      last_location: driver.last_location,
      car_type: driver.current_car.type
    }
  end

  def render("location.json", %{location: location}) do
    %{
      data: %{
        location: location
      }
    }
  end
end
