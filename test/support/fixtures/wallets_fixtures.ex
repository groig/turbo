defmodule Turbo.WalletsFixtures do
  alias Turbo.DriversFixtures

  @moduledoc """
  This module defines test helpers for creating
  entities via the `Turbo.Wallets` context.
  """

  @doc """
  Generate a wallet.
  """
  def wallet_fixture(attrs \\ %{}) do
    driver = DriversFixtures.driver_fixture()

    {:ok, wallet} =
      attrs
      |> Enum.into(%{driver_id: driver.id})
      |> Turbo.Wallets.create_wallet()

    wallet
  end
end
