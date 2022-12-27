defmodule Turbo.RatesTest do
  use Turbo.DataCase

  alias Turbo.Rates
  alias Turbo.Rates.Rate

  import Turbo.RatesFixtures

  describe "rates management" do
    @invalid_attrs %{
      area: nil,
      description: nil,
      end: nil,
      name: nil,
      rate_per_km: nil,
      start: nil
    }

    test "list_rates/0 returns all rates" do
      rate = time_rate_fixture()
      assert Rates.list_rates() == [rate]
    end

    test "get_rate!/1 returns the rate with given id" do
      rate = time_rate_fixture()
      assert Rates.get_rate!(rate.id) == rate
      rate = area_rate_fixture()
      assert Rates.get_rate!(rate.id).id == rate.id
    end

    test "create_time_rate/1 with valid data creates a rate" do
      valid_attrs = %{
        description: "some description",
        end: ~T[21:34:00],
        name: "some name",
        rate_per_km_standard: 42,
        rate_per_km_premium: 43,
        rate_per_km_familiar: 44,
        start: ~T[20:34:00]
      }

      assert {:ok, %Rate{} = rate} = Rates.create_time_rate(valid_attrs)
      assert rate.description == "some description"
      assert rate.end == ~T[21:34:00]
      assert rate.name == "some name"
      assert rate.rate_per_km_standard == 42
      assert rate.rate_per_km_premium == 43
      assert rate.rate_per_km_familiar == 44
      assert rate.start == ~T[20:34:00]
      assert rate.type == :time
    end

    test "create_time_rate/1 with invalid interval returns error" do
      invalid_attrs = %{
        description: "some description",
        start: ~T[20:34:00],
        end: ~T[19:34:00],
        name: "some name",
        rate_per_km_standard: 42,
        rate_per_km_premium: 43,
        rate_per_km_familiar: 44
      }

      assert {:error, %Ecto.Changeset{}} = Rates.create_time_rate(invalid_attrs)
    end

    test "create_area_rate/1 with valid data creates a rate" do
      valid_attrs = %{
        area: %Geo.Polygon{
          coordinates: [
            [{100.0, 0.0}, {101.0, 0.0}, {101.0, 1.0}, {100.0, 1.0}, {100.0, 0.0}]
          ]
        },
        description: "some description",
        name: "some name",
        fixed_rate_standard: 42,
        fixed_rate_premium: 43,
        fixed_rate_familiar: 44
      }

      assert {:ok, %Rate{} = rate} = Rates.create_area_rate(valid_attrs)
      assert rate.description == "some description"
      assert rate.name == "some name"
      assert rate.fixed_rate_standard == 42
      assert rate.fixed_rate_premium == 43
      assert rate.fixed_rate_familiar == 44
      assert rate.type == :area
    end

    test "update_time_rate/2 with valid data updates the rate" do
      rate = time_rate_fixture()

      update_attrs = %{
        description: "some updated description",
        end: ~T[21:34:00],
        name: "some updated name",
        rate_per_km_standard: 43,
        rate_per_km_premium: 44,
        rate_per_km_familiar: 45,
        start: ~T[20:34:00]
      }

      assert {:ok, %Rate{} = rate} = Rates.update_time_rate(rate, update_attrs)
      assert rate.description == "some updated description"
      assert rate.end == ~T[21:34:00]
      assert rate.name == "some updated name"
      assert rate.rate_per_km_standard == 43
      assert rate.rate_per_km_premium == 44
      assert rate.rate_per_km_familiar == 45
      assert rate.start == ~T[20:34:00]
    end

    test "update_area_rate/2 with valid data updates the rate" do
      rate = area_rate_fixture()

      update_attrs = %{
        description: "some updated description",
        name: "some updated name",
        fixed_rate_standard: 43,
        fixed_rate_premium: 44,
        fixed_rate_familiar: 45,
        area: %Geo.Polygon{
          coordinates: [
            [{101.0, 0.0}, {102.0, 0.0}, {101.0, 1.0}, {100.0, 1.0}, {101.0, 0.0}]
          ]
        }
      }

      assert {:ok, %Rate{} = rate} = Rates.update_area_rate(rate, update_attrs)
      assert rate.description == "some updated description"
      assert rate.name == "some updated name"
      assert rate.fixed_rate_standard == 43
      assert rate.fixed_rate_premium == 44
      assert rate.fixed_rate_familiar == 45
    end

    test "update_time_rate/2 with invalid data returns error changeset" do
      rate = time_rate_fixture()
      assert {:error, %Ecto.Changeset{}} = Rates.update_time_rate(rate, @invalid_attrs)
    end

    test "update_area_rate/2 with invalid data returns error changeset" do
      rate = area_rate_fixture()
      assert {:error, %Ecto.Changeset{}} = Rates.update_area_rate(rate, @invalid_attrs)
    end

    test "delete_rate/1 deletes the rate" do
      rate = time_rate_fixture()
      assert {:ok, %Rate{}} = Rates.delete_rate(rate)
      assert_raise Ecto.NoResultsError, fn -> Rates.get_rate!(rate.id) end
    end

    test "change_time_rate/1 returns a rate changeset" do
      rate = time_rate_fixture()
      assert %Ecto.Changeset{} = Rates.change_time_rate(rate)
    end
  end

  @area_1 %Geo.Polygon{
    coordinates: [
      [
        {-82.400, 23.139},
        {-82.397, 23.141},
        {-82.393, 23.140},
        {-82.393, 23.136},
        {-82.397, 23.134},
        {-82.400, 23.135},
        {-82.401, 23.137},
        {-82.400, 23.139}
      ]
    ]
  }

  @area_2 %Geo.Polygon{
    coordinates: [
      [
        {-82.386, 23.132},
        {-82.386, 23.138},
        {-82.377, 23.138},
        {-82.377, 23.126},
        {-82.386, 23.123},
        {-82.392, 23.130},
        {-82.386, 23.132}
      ]
    ]
  }

  @destination_area_1 %Geo.Point{
    coordinates: {-82.398, 23.137},
    srid: 4326
  }

  @destination_area_2 %Geo.Point{
    coordinates: {-82.381, 23.1314},
    srid: 4326
  }

  @destination_1 %Geo.Point{
    coordinates: {-82.400, 23.129},
    srid: 4326
  }

  @destination_2 %Geo.Point{
    coordinates: {-82.407, 23.126},
    srid: 4326
  }
  describe "rates calculation" do
    setup :create_rates

    test "get_rate_for_ride/4 returns the correct rate by distance" do
      config = Rates.get_rate_configuration()

      assert Rates.get_rate_for_ride(:standard, ~T[09:25:00], 1, @destination_1) ==
               config.min_rate

      assert Rates.get_rate_for_ride(:premium, ~T[09:25:00], 1, @destination_1) == config.min_rate

      assert Rates.get_rate_for_ride(:familiar, ~T[09:25:00], 1, @destination_1) ==
               config.min_rate

      assert Rates.get_rate_for_ride(:standard, ~T[09:25:00], 2, @destination_2) ==
               config.min_rate

      assert Rates.get_rate_for_ride(:premium, ~T[09:25:00], 2, @destination_2) == config.min_rate
      assert Rates.get_rate_for_ride(:familiar, ~T[09:25:00], 2, @destination_2) == 400

      assert Rates.get_rate_for_ride(:standard, ~T[19:25:00], 2, @destination_1) ==
               config.min_rate

      assert Rates.get_rate_for_ride(:premium, ~T[19:25:00], 2, @destination_1) == 300
      assert Rates.get_rate_for_ride(:familiar, ~T[19:25:00], 2, @destination_1) == 500

      assert Rates.get_rate_for_ride(:standard, ~T[19:25:00], 4, @destination_2) == 400
      assert Rates.get_rate_for_ride(:premium, ~T[19:25:00], 4, @destination_2) == 600
      assert Rates.get_rate_for_ride(:familiar, ~T[19:25:00], 4, @destination_2) == 1000

      assert Rates.get_rate_for_ride(:standard, ~T[00:25:00], 3, @destination_1) == 450
      assert Rates.get_rate_for_ride(:premium, ~T[00:25:00], 3, @destination_1) == 600
      assert Rates.get_rate_for_ride(:familiar, ~T[00:25:00], 3, @destination_1) == 900

      assert Rates.get_rate_for_ride(:standard, ~T[00:25:00], 6, @destination_2) == 900
      assert Rates.get_rate_for_ride(:premium, ~T[00:25:00], 6, @destination_2) == 1200
      assert Rates.get_rate_for_ride(:familiar, ~T[00:25:00], 6, @destination_2) == 1800
    end

    test "get_rate_for_ride/4 when the ride starts at the rate edge" do
      config = Rates.get_rate_configuration()

      assert Rates.get_rate_for_ride(:standard, ~T[08:00:00], 1, @destination_1) ==
               config.min_rate
    end

    test "get_rate_for_ride/4 returns the correct rate by destination area" do
      assert Rates.get_rate_for_ride(:standard, ~T[09:25:00], 1, @destination_area_1) == 10
      assert Rates.get_rate_for_ride(:premium, ~T[09:25:00], 1, @destination_area_1) == 20
      assert Rates.get_rate_for_ride(:familiar, ~T[09:25:00], 1, @destination_area_1) == 30

      assert Rates.get_rate_for_ride(:standard, ~T[09:25:00], 2, @destination_area_2) == 40
      assert Rates.get_rate_for_ride(:premium, ~T[09:25:00], 2, @destination_area_2) == 50
      assert Rates.get_rate_for_ride(:familiar, ~T[09:25:00], 2, @destination_area_2) == 60
    end
  end

  defp create_rates(context) do
    time_rate_fixture(%{
      start: ~T[08:00:00],
      end: ~T[18:00:00],
      rate_per_km_standard: 50,
      rate_per_km_premium: 100,
      rate_per_km_familiar: 200
    })

    time_rate_fixture(%{
      start: ~T[18:00:00],
      end: ~T[22:00:00],
      rate_per_km_standard: 100,
      rate_per_km_premium: 150,
      rate_per_km_familiar: 250
    })

    time_rate_fixture(%{
      start: ~T[22:00:00],
      end: ~T[23:59:00],
      rate_per_km_standard: 150,
      rate_per_km_premium: 200,
      rate_per_km_familiar: 300
    })

    time_rate_fixture(%{
      start: ~T[00:00:00],
      end: ~T[08:00:00],
      rate_per_km_standard: 150,
      rate_per_km_premium: 200,
      rate_per_km_familiar: 300
    })

    area_rate_fixture(%{
      area: @area_1,
      fixed_rate_standard: 10,
      fixed_rate_premium: 20,
      fixed_rate_familiar: 30
    })

    area_rate_fixture(%{
      area: @area_2,
      fixed_rate_standard: 40,
      fixed_rate_premium: 50,
      fixed_rate_familiar: 60
    })

    context
  end

  describe "rates_configuration" do
    alias Turbo.Rates.RateConfiguration

    alias Turbo.Rates.RateConfiguration

    @invalid_attrs %{min_rate: nil}

    test "get_rate_configuration/0 returns the rate_configuration" do
      assert %RateConfiguration{} = Rates.get_rate_configuration()
    end

    test "update_rate_configuration/2 with valid data updates the rate_configuration" do
      rate_configuration = Rates.get_rate_configuration()
      update_attrs = %{min_rate: 43}

      assert {:ok, %RateConfiguration{} = rate_configuration} =
               Rates.update_rate_configuration(rate_configuration, update_attrs)

      assert rate_configuration.min_rate == 43
    end

    test "update_rate_configuration/2 with invalid data returns error changeset" do
      rate_configuration = Rates.get_rate_configuration()

      assert {:error, %Ecto.Changeset{}} =
               Rates.update_rate_configuration(rate_configuration, @invalid_attrs)

      assert rate_configuration == Rates.get_rate_configuration()
    end
  end
end
