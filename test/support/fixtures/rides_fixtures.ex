defmodule Turbo.RidesFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Turbo.Rides` context.
  """
  alias Turbo.CustomersFixtures

  @doc """
  Generate a ride.
  """
  def ride_fixture(attrs \\ %{}) do
    customer = CustomersFixtures.customer_fixture()

    {:ok, ride} =
      attrs
      |> Enum.into(%{
        start_location: %Geo.Point{coordinates: {30.20, 20.30}, srid: 4326},
        customer_id: customer.id
      })
      |> Turbo.Rides.create_ride()

    ride
  end
end
