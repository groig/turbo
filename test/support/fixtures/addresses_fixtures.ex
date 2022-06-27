defmodule Turbo.AddressesFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Turbo.Addresses` context.
  """
  alias Turbo.CustomersFixtures

  @doc """
  Generate a address.
  """
  def address_fixture(attrs \\ %{}) do
    customer = CustomersFixtures.customer_fixture()

    {:ok, address} =
      attrs
      |> Enum.into(%{
        name: "address#{System.unique_integer()}",
        customer_id: customer.id,
        location: %Geo.Point{coordinates: {30.20, 20.30}, srid: 4326}
      })
      |> Turbo.Addresses.create_address()

    address
  end
end
