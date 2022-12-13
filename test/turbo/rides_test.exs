defmodule Turbo.RidesTest do
  use Turbo.DataCase, async: true
  alias Turbo.RidesFixtures
  alias Turbo.CustomersFixtures
  alias Turbo.DriversFixtures

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
      driver = DriversFixtures.driver_fixture()
      ride_request = RidesFixtures.ride_request_fixture()
      location = %Geo.Point{coordinates: {30.20, 20.30}, srid: 4326}

      valid_attrs = %{
        customer_id: customer.id,
        driver_id: driver.id,
        start_location: location,
        ride_request_id: ride_request.id
      }

      assert {:ok, %Ride{} = ride} = Rides.create_ride(valid_attrs)
      assert ride.customer_id == customer.id
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

  describe "ride_requests" do
    alias Turbo.Rides.RideRequest

    import Turbo.RidesFixtures

    @invalid_attrs %{start_location: nil}

    test "list_ride_requests/0 returns all ride_requests" do
      ride_request = ride_request_fixture()
      assert Rides.list_ride_requests() == [ride_request]
    end

    test "get_ride_request!/1 returns the ride_request with given id" do
      ride_request = ride_request_fixture()
      id = ride_request.id
      assert %{id: ^id} = Rides.get_ride_request!(ride_request.id)
    end

    test "create_ride_request/1 with valid data creates a ride_request" do
      customer = CustomersFixtures.customer_fixture()

      valid_attrs = %{
        start_location: %Geo.Point{coordinates: {30.20, 20.30}, srid: 4326},
        end_location: %Geo.Point{coordinates: {30.20, 20.30}, srid: 4326},
        customer_id: customer.id
      }

      assert {:ok, %RideRequest{} = _ride_request} = Rides.create_ride_request(valid_attrs)
    end

    test "create_ride_request/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Rides.create_ride_request(@invalid_attrs)
    end

    test "delete_ride_request/1 deletes the ride_request" do
      ride_request = ride_request_fixture()
      assert {:ok, %RideRequest{}} = Rides.delete_ride_request(ride_request)
      assert_raise Ecto.NoResultsError, fn -> Rides.get_ride_request!(ride_request.id) end
    end
  end

  describe "reservations" do
    alias Turbo.Rides.RideReservation

    import Turbo.RidesFixtures

    @invalid_attrs %{
      baggage: nil,
      car_type: nil,
      end_location: nil,
      identity_card: nil,
      name: nil,
      passenger_amount: nil,
      start_location: nil
    }

    test "list_reservations/0 returns all reservations" do
      ride_reservation = ride_reservation_fixture()
      assert Rides.list_reservations() == [ride_reservation]
    end

    test "get_ride_reservation!/1 returns the ride_reservation with given id" do
      ride_reservation = ride_reservation_fixture()
      assert Rides.get_ride_reservation!(ride_reservation.id) == ride_reservation
    end

    test "create_ride_reservation/1 with valid data creates a ride_reservation" do
      customer = CustomersFixtures.customer_fixture()

      valid_attrs = %{
        baggage: true,
        car_type: :standard,
        identity_card: "some identity_card",
        name: "some name",
        passenger_amount: 42,
        start_location: %Geo.Point{coordinates: {30.20, 20.30}, srid: 4326},
        end_location: %Geo.Point{coordinates: {30.20, 20.30}, srid: 4326},
        customer_id: customer.id
      }

      assert {:ok, %RideReservation{} = ride_reservation} =
               Rides.create_ride_reservation(valid_attrs)

      assert ride_reservation.baggage == true
      assert ride_reservation.car_type == :standard
      assert ride_reservation.identity_card == "some identity_card"
      assert ride_reservation.name == "some name"
      assert ride_reservation.passenger_amount == 42
    end

    test "create_ride_reservation/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Rides.create_ride_reservation(@invalid_attrs)
    end

    test "update_ride_reservation/2 with valid data updates the ride_reservation" do
      ride_reservation = ride_reservation_fixture()

      update_attrs = %{
        baggage: false,
        car_type: :comfort,
        start_location: %Geo.Point{coordinates: {30.20, 20.30}, srid: 4326},
        end_location: %Geo.Point{coordinates: {30.20, 20.30}, srid: 4326},
        identity_card: "some updated identity_card",
        name: "some updated name",
        passenger_amount: 43
      }

      assert {:ok, %RideReservation{} = ride_reservation} =
               Rides.update_ride_reservation(ride_reservation, update_attrs)

      assert ride_reservation.baggage == false
      assert ride_reservation.car_type == :comfort
      assert ride_reservation.identity_card == "some updated identity_card"
      assert ride_reservation.name == "some updated name"
      assert ride_reservation.passenger_amount == 43
    end

    test "update_ride_reservation/2 with invalid data returns error changeset" do
      ride_reservation = ride_reservation_fixture()

      assert {:error, %Ecto.Changeset{}} =
               Rides.update_ride_reservation(ride_reservation, @invalid_attrs)

      assert ride_reservation == Rides.get_ride_reservation!(ride_reservation.id)
    end

    test "delete_ride_reservation/1 deletes the ride_reservation" do
      ride_reservation = ride_reservation_fixture()
      assert {:ok, %RideReservation{}} = Rides.delete_ride_reservation(ride_reservation)
      assert_raise Ecto.NoResultsError, fn -> Rides.get_ride_reservation!(ride_reservation.id) end
    end

    test "change_ride_reservation/1 returns a ride_reservation changeset" do
      ride_reservation = ride_reservation_fixture()
      assert %Ecto.Changeset{} = Rides.change_ride_reservation(ride_reservation)
    end
  end
end
