defmodule TurboWeb.RateView do
  use TurboWeb, :view
  alias TurboWeb.RateView

  def render("index.json", %{rates: rates}) do
    %{data: render_many(rates, RateView, "rate.json")}
  end

  def render("show.json", %{rate: rate}) do
    %{data: render_one(rate, RateView, "rate.json")}
  end

  def render("rate.json", %{rate: rate}) do
    %{
      id: rate.id,
      name: rate.name,
      type: rate.type,
      description: rate.description,
      start: rate.start,
      end: rate.end,
      rate_per_km_standard: rate.rate_per_km_standard,
      rate_per_km_premium: rate.rate_per_km_premium,
      rate_per_km_familiar: rate.rate_per_km_familiar,
      fixed_rate_standard: rate.fixed_rate_standard,
      fixed_rate_premium: rate.fixed_rate_premium,
      fixed_rate_familiar: rate.fixed_rate_familiar,
      area: rate.area
    }
  end

  def render("price.json", %{price: price}) do
    %{data: %{price: price}}
  end
end
