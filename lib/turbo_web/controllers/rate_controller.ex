defmodule TurboWeb.RateController do
  use TurboWeb, :controller

  alias Turbo.Rates
  alias Turbo.Rates.Rate

  action_fallback TurboWeb.FallbackController

  plug :require_admin, [] when action != :calculate

  def index(conn, _params) do
    rates = Rates.list_rates()
    render(conn, "index.json", rates: rates)
  end

  def show(conn, %{"id" => id}) do
    rate = Rates.get_rate!(id)
    render(conn, "show.json", rate: rate)
  end

  def delete(conn, %{"id" => id}) do
    rate = Rates.get_rate!(id)

    with {:ok, %Rate{}} <- Rates.delete_rate(rate) do
      send_resp(conn, :no_content, "")
    end
  end

  def create_time_rate(conn, %{"rate" => rate_params}) do
    with {:ok, %Rate{} = rate} <- Rates.create_time_rate(rate_params) do
      conn
      |> put_status(:created)
      |> put_resp_header("location", Routes.rate_path(conn, :show, rate))
      |> render("show.json", rate: rate)
    end
  end

  def update_time_rate(conn, %{"id" => id, "rate" => rate_params}) do
    rate = Rates.get_rate!(id)

    with {:ok, %Rate{} = rate} <- Rates.update_time_rate(rate, rate_params) do
      render(conn, "show.json", rate: rate)
    end
  end

  def create_area_rate(conn, %{"rate" => rate_params}) do
    with {:ok, %Rate{} = rate} <- Rates.create_area_rate(rate_params) do
      conn
      |> put_status(:created)
      |> put_resp_header("location", Routes.rate_path(conn, :show, rate))
      |> render("show.json", rate: rate)
    end
  end

  def update_area_rate(conn, %{"id" => id, "rate" => rate_params}) do
    rate = Rates.get_rate!(id)

    with {:ok, %Rate{} = rate} <- Rates.update_area_rate(rate, rate_params) do
      render(conn, "show.json", rate: rate)
    end
  end

  def calculate(
        conn,
        %{
          "car_type" => car_type,
          "destination" => %{"coordinates" => [x, y], "type" => "Point"},
          "distance" => distance,
          "start_time" => start_time
        }
      ) do
    car_type = String.to_existing_atom(car_type)
    destination = %Geo.Point{coordinates: {String.to_float(x), String.to_float(y)}, srid: 4326}
    start_time = Time.from_iso8601!(start_time)
    {distance, ""} = Float.parse(distance)
    price = Rates.get_rate_for_ride(car_type, start_time, distance, destination)

    render(conn, "price.json", price: price)
  end
end
