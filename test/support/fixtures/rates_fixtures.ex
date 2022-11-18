defmodule Turbo.RatesFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Turbo.Rates` context.
  """

  @doc """
  Generate a rate.
  """
  def time_rate_fixture(attrs \\ %{}) do
    {:ok, rate} =
      attrs
      |> Enum.into(%{
        description: "some description",
        end: ~N[2022-10-25 20:34:00],
        name: "some name",
        rate_per_km_standard: 42,
        rate_per_km_comfort: 42,
        rate_per_km_familiar: 42,
        start: ~N[2022-10-25 20:34:00]
      })
      |> Turbo.Rates.create_time_rate()

    rate
  end

  def area_rate_fixture(attrs \\ %{}) do
    {:ok, rate} =
      attrs
      |> Enum.into(%{
        area: %Geo.Polygon{
          coordinates: [
            [{100.0, 0.0}, {101.0, 0.0}, {101.0, 1.0}, {100.0, 1.0}, {100.0, 0.0}]
          ]
        },
        description: "some description",
        name: "some name",
        fixed_rate_standard: 42,
        fixed_rate_comfort: 42,
        fixed_rate_familiar: 42
      })
      |> Turbo.Rates.create_area_rate()

    rate
  end
end
