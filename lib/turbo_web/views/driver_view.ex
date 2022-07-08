defmodule TurboWeb.DriverView do
  use TurboWeb, :view
  alias TurboWeb.DriverView

  def render("index.json", %{drivers: drivers}) do
    render_many(drivers, DriverView, "driver.json")
  end

  def render("show.json", %{driver: driver}) do
    render_one(driver, DriverView, "driver.json")
  end

  def render("driver.json", %{driver: driver}) do
    %{
      id: driver.id
    }
  end

  def render("location.json", %{location: location}) do
    %{
      location: location
    }
  end
end
