defmodule TurboWeb.CarControllerTest do
  use TurboWeb.ConnCase, async: true

  import Turbo.CarsFixtures

  alias Turbo.Cars.Car

  @update_attrs %{
    color: "some updated color",
    license_plate: "some updated license_plate",
    make: "some updated make",
    model: "some updated model"
  }
  @invalid_attrs %{color: nil, license_plate: nil, make: nil, model: nil}

  setup %{conn: conn} do
    {:ok, conn: put_req_header(conn, "accept", "application/json")}
  end

  describe "index" do
    setup :create_car

    test "lists all cars for the driver", %{conn: conn, car: car} do
      conn = get(conn, Routes.car_path(conn, :index)) |> doc
      car_fixture()
      car_fixture()
      assert hd(json_response(conn, 200)["data"])["id"] == car.id
    end
  end

  describe "create car" do
    setup :register_and_log_in_driver

    test "renders car when data is valid", %{conn: conn} do
      license_plate = "license-#{System.unique_integer()}"

      attrs = %{
        color: "some color",
        license_plate: license_plate,
        make: "some make",
        model: "some model"
      }

      conn = post(conn, Routes.car_path(conn, :create), attrs) |> doc
      assert %{"data" => %{"id" => id}} = json_response(conn, 201)

      conn = get(conn, Routes.car_path(conn, :show, id)) |> doc

      assert %{
               "data" => %{
                 "id" => ^id,
                 "color" => "some color",
                 "license_plate" => ^license_plate,
                 "make" => "some make",
                 "model" => "some model"
               }
             } = json_response(conn, 200)
    end

    test "renders errors when data is invalid", %{conn: conn} do
      conn = post(conn, Routes.car_path(conn, :create), car: @invalid_attrs) |> doc
      assert json_response(conn, 422)["errors"] != %{}
    end
  end

  describe "update car" do
    setup [:create_car]

    test "renders car when data is valid", %{conn: conn, car: %Car{id: id} = car} do
      conn = put(conn, Routes.car_path(conn, :update, car), car: @update_attrs) |> doc
      assert %{"data" => %{"id" => ^id}} = json_response(conn, 200)

      conn = get(conn, Routes.car_path(conn, :show, id))

      assert %{
               "data" => %{
                 "id" => ^id,
                 "color" => "some updated color",
                 "license_plate" => "some updated license_plate",
                 "make" => "some updated make",
                 "model" => "some updated model"
               }
             } = json_response(conn, 200)
    end

    test "renders errors when data is invalid", %{conn: conn, car: car} do
      conn = put(conn, Routes.car_path(conn, :update, car), car: @invalid_attrs)
      assert json_response(conn, 422)["errors"] != %{}
    end
  end

  describe "delete car" do
    setup [:create_car]

    test "deletes chosen car", %{conn: conn, car: car} do
      conn = delete(conn, Routes.car_path(conn, :delete, car)) |> doc
      assert response(conn, 204)

      assert_error_sent 404, fn ->
        get(conn, Routes.car_path(conn, :show, car))
      end
    end
  end

  defp create_car(%{conn: conn}) do
    %{conn: conn, driver: driver} = register_and_log_in_driver(%{conn: conn})
    car = car_fixture(%{driver_id: driver.id})

    %{car: car, conn: conn}
  end
end
