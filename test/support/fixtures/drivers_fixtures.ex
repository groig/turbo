defmodule Turbo.DriversFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Turbo.Drivers` context.
  """

  alias Turbo.AccountsFixtures

  @doc """
  Generate a driver.
  """
  def driver_fixture(attrs \\ %{}) do
    user = AccountsFixtures.user_fixture(%{type: :driver})

    {:ok, driver} =
      attrs
      |> Enum.into(%{user_id: user.id, license: "licence#{System.unique_integer()}"})
      |> Turbo.Drivers.create_driver()

    driver
  end
end
