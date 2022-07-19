defmodule TurboWeb.AddressView do
  use TurboWeb, :view
  alias TurboWeb.AddressView

  def render("index.json", %{addresses: addresses}) do
    render_many(addresses, AddressView, "address.json")
  end

  def render("show.json", %{address: address}) do
    render_one(address, AddressView, "address.json")
  end

  def render("address.json", %{address: address}) do
    %{
      id: address.id,
      name: address.name,
      location: address.location
    }
  end
end
