defmodule TurboWeb.RateConfigurationController do
  use TurboWeb, :controller

  alias Turbo.Rates
  alias Turbo.Rates.RateConfiguration

  action_fallback TurboWeb.FallbackController

  plug :require_admin

  def show(conn, _params) do
    rate_configuration = Rates.get_rate_configuration()
    render(conn, "show.json", rate_configuration: rate_configuration)
  end

  def update(conn, %{"rate_configuration" => rate_configuration_params}) do
    rate_configuration = Rates.get_rate_configuration()

    with {:ok, %RateConfiguration{} = rate_configuration} <-
           Rates.update_rate_configuration(rate_configuration, rate_configuration_params) do
      render(conn, "show.json", rate_configuration: rate_configuration)
    end
  end
end
