defmodule Turbo.AddressesTest do
  use Turbo.DataCase, async: true

  alias Turbo.Addresses
  alias Turbo.CustomersFixtures

  describe "addresses" do
    alias Turbo.Addresses.Address

    import Turbo.AddressesFixtures

    @invalid_attrs %{location: nil, name: nil, customer_id: nil}

    test "list_addresses/0 returns all addresses" do
      address = address_fixture()
      assert Addresses.list_addresses(address.customer_id) == [address]
    end

    test "get_address!/2 returns the address with given id" do
      address = address_fixture()
      assert Addresses.get_address!(address.id, address.customer_id) == address
    end

    test "create_address/1 with valid data creates a address" do
      customer = CustomersFixtures.customer_fixture()

      valid_attrs = %{
        name: "name",
        location: %Geo.Point{coordinates: {30.20, 20.30}},
        customer_id: customer.id
      }

      assert {:ok, %Address{} = _address} = Addresses.create_address(valid_attrs)
    end

    test "create_address/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Addresses.create_address(@invalid_attrs)
    end

    test "update_address/2 with valid data updates the address" do
      address = address_fixture()
      update_attrs = %{}

      assert {:ok, %Address{} = _address} = Addresses.update_address(address, update_attrs)
    end

    test "update_address/2 with invalid data returns error changeset" do
      address = address_fixture()
      assert {:error, %Ecto.Changeset{}} = Addresses.update_address(address, @invalid_attrs)
      assert address == Addresses.get_address!(address.id, address.customer_id)
    end

    test "delete_address/1 deletes the address" do
      address = address_fixture()
      assert {:ok, %Address{}} = Addresses.delete_address(address)

      assert_raise Ecto.NoResultsError, fn ->
        Addresses.get_address!(address.id, address.customer_id)
      end
    end

    test "change_address/1 returns a address changeset" do
      address = address_fixture()
      assert %Ecto.Changeset{} = Addresses.change_address(address)
    end
  end
end
