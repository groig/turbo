defmodule Turbo.WalletsTest do
  use Turbo.DataCase, async: true

  alias Turbo.Wallets
  alias Turbo.DriversFixtures

  describe "wallets" do
    test "credit_wallet/2 credits the wallet with the given amount" do
      driver = DriversFixtures.driver_fixture()
      assert driver.wallet.credit == 0
      {:ok, data} = Wallets.credit_wallet(driver.wallet.id, 42, :cash)
      assert data.wallet.credit == 42
      {:ok, data} = Wallets.credit_wallet(driver.wallet.id, 1, :cash)
      assert data.wallet.credit == 43
    end

    test "credit_wallet/2 raises error on invalid data" do
      driver = DriversFixtures.driver_fixture()
      assert driver.wallet.credit == 0

      assert {:error, %Ecto.Changeset{} = _changeset} =
               Wallets.credit_wallet(driver.wallet.id, -1, :cash)

      assert {:error, %Ecto.Changeset{} = _changeset} =
               Wallets.credit_wallet(driver.wallet.id, -1, :invalid_type)

      assert_raise ArithmeticError, "bad argument in arithmetic expression", fn ->
        Wallets.credit_wallet(driver.wallet.id, "notanumber", :invalid_type)
      end
    end
  end
end
