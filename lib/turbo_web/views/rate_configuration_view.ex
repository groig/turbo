defmodule TurboWeb.RateConfigurationView do
  use TurboWeb, :view
  alias TurboWeb.RateConfigurationView

  def render("index.json", %{rates_configuration: rates_configuration}) do
    %{data: render_many(rates_configuration, RateConfigurationView, "rate_configuration.json")}
  end

  def render("show.json", %{rate_configuration: rate_configuration}) do
    %{data: render_one(rate_configuration, RateConfigurationView, "rate_configuration.json")}
  end

  def render("rate_configuration.json", %{rate_configuration: rate_configuration}) do
    %{
      id: rate_configuration.id,
      min_rate: rate_configuration.min_rate
    }
  end
end
