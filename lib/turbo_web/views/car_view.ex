defmodule TurboWeb.CarView do
  use TurboWeb, :view
  alias TurboWeb.CarView

  def render("index.json", %{cars: cars}) do
    render_many(cars, CarView, "car.json")
  end

  def render("show.json", %{car: car}) do
    render_one(car, CarView, "car.json")
  end

  def render("car.json", %{car: car}) do
    %{
      id: car.id,
      make: car.make,
      model: car.model,
      color: car.color,
      license_plate: car.license_plate
    }
  end
end
