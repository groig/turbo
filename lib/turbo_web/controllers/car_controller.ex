defmodule TurboWeb.CarController do
  use TurboWeb, :controller

  alias Turbo.Cars
  alias Turbo.Cars.Car

  action_fallback TurboWeb.FallbackController

  plug :require_driver

  def index(conn, _params) do
    cars = Cars.list_cars_for_driver(conn.assigns.current_user.driver.id)
    render(conn, "index.json", cars: cars)
  end

  def create(conn, car_params) do
    car_params = Map.put(car_params, "driver_id", conn.assigns.current_user.driver.id)

    with {:ok, %Car{} = car} <- Cars.create_car(car_params) do
      conn
      |> put_status(:created)
      |> put_resp_header("location", Routes.car_path(conn, :show, car))
      |> render("show.json", car: car)
    end
  end

  def show(conn, %{"id" => id}) do
    car = Cars.get_car!(id)
    render(conn, "show.json", car: car)
  end

  def update(conn, %{"id" => id, "car" => car_params}) do
    car = Cars.get_car!(id)

    with {:ok, %Car{} = car} <- Cars.update_car(car, car_params) do
      render(conn, "show.json", car: car)
    end
  end

  def delete(conn, %{"id" => id}) do
    car = Cars.get_car!(id)

    with {:ok, %Car{}} <- Cars.delete_car(car) do
      send_resp(conn, :no_content, "")
    end
  end
end
