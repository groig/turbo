defmodule Turbo.WalletsFixtures do
  alias Turbo.DriversFixtures
  alias Turbo.Wallets.Wallet

  @moduledoc """
  This module defines test helpers for creating
  entities via the `Turbo.Wallets` context.
  """

  @doc """
  Generate a wallet.
  """
  def wallet_fixture() do
    driver = DriversFixtures.driver_fixture()

    {:ok, wallet} =
      %Wallet{driver_id: driver.id}
      |> Turbo.Repo.insert()

    wallet
  end
end
