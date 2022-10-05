defmodule Turbo.DriversFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Turbo.Drivers` context.
  """

  alias Turbo.AccountsFixtures
  alias Turbo.Drivers.Driver
  alias Turbo.Wallets.Wallet

  @doc """
  Generate a driver.
  """
  def driver_fixture() do
    user = AccountsFixtures.user_fixture(%{type: :driver})

    {:ok, driver} =
      %Driver{
        user_id: user.id,
        license: "licence#{System.unique_integer()}",
        identity_card: "ci#{System.unique_integer([:positive])}"
      }
      |> Turbo.Repo.insert()

    {:ok, _wallet} = Turbo.Repo.insert(%Wallet{driver_id: driver.id})

    Turbo.Repo.preload(driver, :wallet)
  end
end
