defmodule Turbo.DriversTest do
  use Turbo.DataCase, async: true

  alias Turbo.Drivers
  alias Turbo.AccountsFixtures

  describe "drivers" do
    alias Turbo.Drivers.Driver

    import Turbo.DriversFixtures

    @invalid_attrs %{license: nil}

    test "list_drivers/0 returns all drivers" do
      driver = driver_fixture()
      assert Drivers.list_drivers() == [driver]
    end

    test "get_driver!/1 returns the driver with given id" do
      driver = driver_fixture()
      assert Drivers.get_driver!(driver.id).id == driver.id
    end

    test "create_driver/1 with valid data creates a driver" do
      user = AccountsFixtures.user_fixture()
      valid_attrs = %{license: "license#{System.unique_integer()}", user_id: user.id}

      assert {:ok, %Driver{} = _driver} = Drivers.create_driver(valid_attrs)
    end

    test "create_driver/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Drivers.create_driver(@invalid_attrs)
    end

    test "update_driver/2 with valid data updates the driver" do
      driver = driver_fixture()
      update_attrs = %{}

      assert {:ok, %Driver{} = _driver} = Drivers.update_driver(driver, update_attrs)
    end

    test "update_driver/2 with invalid data returns error changeset" do
      driver = driver_fixture()
      assert {:error, %Ecto.Changeset{}} = Drivers.update_driver(driver, @invalid_attrs)
      assert driver.id == Drivers.get_driver!(driver.id).id
    end

    test "delete_driver/1 deletes the driver" do
      driver = driver_fixture()
      assert {:ok, %Driver{}} = Drivers.delete_driver(driver)
      assert_raise Ecto.NoResultsError, fn -> Drivers.get_driver!(driver.id) end
    end

    test "change_driver/1 returns a driver changeset" do
      driver = driver_fixture()
      assert %Ecto.Changeset{} = Drivers.change_driver(driver)
    end
  end
end
