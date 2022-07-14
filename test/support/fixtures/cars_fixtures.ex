defmodule Turbo.CarsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Turbo.Cars` context.
  """
  alias Turbo.DriversFixtures

  @doc """
  Generate a car.
  """
  def car_fixture(attrs \\ %{}) do
    driver = DriversFixtures.driver_fixture()

    {:ok, car} =
      attrs
      |> Enum.into(%{
        color: "some color",
        license_plate: "license-#{System.unique_integer()}",
        make: "some make",
        model: "some model",
        driver_id: driver.id
      })
      |> Turbo.Cars.create_car()

    car
  end
end
