defmodule Turbo.RidesFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Turbo.Rides` context.
  """
  alias Turbo.CustomersFixtures
  alias Turbo.DriversFixtures

  @doc """
  Generate a ride.
  """
  def ride_fixture(attrs \\ %{}) do
    customer = CustomersFixtures.customer_fixture()
    driver = DriversFixtures.driver_fixture()

    {:ok, ride} =
      attrs
      |> Enum.into(%{
        start_location: %Geo.Point{coordinates: {30.20, 20.30}, srid: 4326},
        customer_id: customer.id,
        driver_id: driver.id
      })
      |> Turbo.Rides.create_ride()

    ride
  end

  @doc """
  Generate a ride_request.
  """
  def ride_request_fixture(attrs \\ %{}) do
    customer = CustomersFixtures.customer_fixture()

    {:ok, ride_request} =
      attrs
      |> Enum.into(%{
        start_location: %Geo.Point{coordinates: {30.20, 20.30}, srid: 4326},
        customer_id: customer.id
      })
      |> Turbo.Rides.create_ride_request()

    ride_request
  end
end
