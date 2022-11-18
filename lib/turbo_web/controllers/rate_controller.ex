defmodule TurboWeb.RateController do
  use TurboWeb, :controller

  alias Turbo.Rates
  alias Turbo.Rates.Rate

  action_fallback TurboWeb.FallbackController

  plug :require_admin

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
end
