defmodule Turbo.RidesTest do
  use Turbo.DataCase, async: true
  alias Turbo.CustomersFixtures

  alias Turbo.Rides

  describe "rides" do
    alias Turbo.Rides.Ride

    import Turbo.RidesFixtures

    @invalid_attrs %{customer_id: nil, start_location: nil}

    test "list_rides/0 returns all rides" do
      ride = ride_fixture()
      assert Rides.list_rides() == [ride]
    end

    test "get_ride!/1 returns the ride with given id" do
      ride = ride_fixture()
      assert Rides.get_ride!(ride.id) == ride
    end

    test "create_ride/1 with valid data creates a ride" do
      customer = CustomersFixtures.customer_fixture()
      location = %Geo.Point{coordinates: {30.20, 20.30}, srid: 4326}

      valid_attrs = %{
        customer_id: customer.id,
        start_location: location
      }

      assert {:ok, %Ride{} = ride} = Rides.create_ride(valid_attrs)
      assert ride.customer_id == customer.id
      # assert ride.start_location = location
    end

    test "create_ride/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Rides.create_ride(@invalid_attrs)
    end

    test "update_ride/2 with invalid data returns error changeset" do
      ride = ride_fixture()
      assert {:error, %Ecto.Changeset{}} = Rides.update_ride(ride, @invalid_attrs)
      assert ride == Rides.get_ride!(ride.id)
    end

    test "delete_ride/1 deletes the ride" do
      ride = ride_fixture()
      assert {:ok, %Ride{}} = Rides.delete_ride(ride)
      assert_raise Ecto.NoResultsError, fn -> Rides.get_ride!(ride.id) end
    end

    test "change_ride/1 returns a ride changeset" do
      ride = ride_fixture()
      assert %Ecto.Changeset{} = Rides.change_ride(ride)
    end
  end
end
