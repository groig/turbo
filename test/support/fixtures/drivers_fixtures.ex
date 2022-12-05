defmodule Turbo.DriversFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Turbo.Drivers` context.
  """

  alias Turbo.AccountsFixtures
  alias Turbo.Drivers
  alias Turbo.Wallets.Wallet

  @doc """
  Generate a driver.
  """
  def driver_fixture(attrs \\ %{}) do
    user = AccountsFixtures.user_fixture(%{type: :driver})

    {:ok, driver} =
      attrs
      |> Enum.into(%{
        user_id: user.id,
        license: "licence#{System.unique_integer()}",
        identity_card: "ci#{System.unique_integer([:positive])}",
        available: false
      })
      |> Drivers.create_driver()

    {:ok, _wallet} = Turbo.Repo.insert(%Wallet{driver_id: driver.id})

    Turbo.Repo.preload(driver, :wallet)
  end
end
