defmodule Turbo.RatesTest do
  use Turbo.DataCase

  alias Turbo.Rates

  describe "rates" do
    alias Turbo.Rates.Rate

    import Turbo.RatesFixtures

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
        end: ~N[2022-10-25 20:34:00],
        name: "some name",
        rate_per_km_standard: 42,
        rate_per_km_comfort: 43,
        rate_per_km_familiar: 44,
        start: ~N[2022-10-25 20:34:00]
      }

      assert {:ok, %Rate{} = rate} = Rates.create_time_rate(valid_attrs)
      assert rate.description == "some description"
      assert rate.end == ~N[2022-10-25 20:34:00]
      assert rate.name == "some name"
      assert rate.rate_per_km_standard == 42
      assert rate.rate_per_km_comfort == 43
      assert rate.rate_per_km_familiar == 44
      assert rate.start == ~N[2022-10-25 20:34:00]
      assert rate.type == :time
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
        fixed_rate_comfort: 43,
        fixed_rate_familiar: 44
      }

      assert {:ok, %Rate{} = rate} = Rates.create_area_rate(valid_attrs)
      assert rate.description == "some description"
      assert rate.name == "some name"
      assert rate.fixed_rate_standard == 42
      assert rate.fixed_rate_comfort == 43
      assert rate.fixed_rate_familiar == 44
      assert rate.type == :area
    end

    test "update_time_rate/2 with valid data updates the rate" do
      rate = time_rate_fixture()

      update_attrs = %{
        description: "some updated description",
        end: ~N[2022-10-26 20:34:00],
        name: "some updated name",
        rate_per_km_standard: 43,
        rate_per_km_comfort: 44,
        rate_per_km_familiar: 45,
        start: ~N[2022-10-26 20:34:00]
      }

      assert {:ok, %Rate{} = rate} = Rates.update_time_rate(rate, update_attrs)
      assert rate.description == "some updated description"
      assert rate.end == ~N[2022-10-26 20:34:00]
      assert rate.name == "some updated name"
      assert rate.rate_per_km_standard == 43
      assert rate.rate_per_km_comfort == 44
      assert rate.rate_per_km_familiar == 45
      assert rate.start == ~N[2022-10-26 20:34:00]
    end

    test "update_area_rate/2 with valid data updates the rate" do
      rate = area_rate_fixture()

      update_attrs = %{
        description: "some updated description",
        name: "some updated name",
        fixed_rate_standard: 43,
        fixed_rate_comfort: 44,
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
      assert rate.fixed_rate_comfort == 44
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
end
