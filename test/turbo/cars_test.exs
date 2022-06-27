defmodule Turbo.CarsTest do
  use Turbo.DataCase
  alias Turbo.DriversFixtures

  alias Turbo.Cars

  describe "cars" do
    alias Turbo.Cars.Car

    import Turbo.CarsFixtures

    @invalid_attrs %{color: nil, license_plate: nil, make: nil, model: nil}

    test "list_cars/0 returns all cars" do
      car = car_fixture()
      assert Cars.list_cars() == [car]
    end

    test "get_car!/1 returns the car with given id" do
      car = car_fixture()
      assert Cars.get_car!(car.id) == car
    end

    test "create_car/1 with valid data creates a car" do
      driver = DriversFixtures.driver_fixture()

      valid_attrs = %{
        color: "some color",
        license_plate: "some license_plate",
        make: "some make",
        model: "some model",
        driver_id: driver.id
      }

      assert {:ok, %Car{} = car} = Cars.create_car(valid_attrs)
      assert car.color == "some color"
      assert car.license_plate == "some license_plate"
      assert car.make == "some make"
      assert car.model == "some model"
    end

    test "create_car/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Cars.create_car(@invalid_attrs)
    end

    test "update_car/2 with valid data updates the car" do
      car = car_fixture()

      update_attrs = %{
        color: "some updated color",
        license_plate: "some updated license_plate",
        make: "some updated make",
        model: "some updated model"
      }

      assert {:ok, %Car{} = car} = Cars.update_car(car, update_attrs)
      assert car.color == "some updated color"
      assert car.license_plate == "some updated license_plate"
      assert car.make == "some updated make"
      assert car.model == "some updated model"
    end

    test "update_car/2 with invalid data returns error changeset" do
      car = car_fixture()
      assert {:error, %Ecto.Changeset{}} = Cars.update_car(car, @invalid_attrs)
      assert car == Cars.get_car!(car.id)
    end

    test "delete_car/1 deletes the car" do
      car = car_fixture()
      assert {:ok, %Car{}} = Cars.delete_car(car)
      assert_raise Ecto.NoResultsError, fn -> Cars.get_car!(car.id) end
    end

    test "change_car/1 returns a car changeset" do
      car = car_fixture()
      assert %Ecto.Changeset{} = Cars.change_car(car)
    end
  end
end
