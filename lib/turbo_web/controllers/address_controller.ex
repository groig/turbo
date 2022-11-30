defmodule TurboWeb.AddressController do
  use TurboWeb, :controller

  alias Turbo.Addresses
  alias Turbo.Addresses.Address

  action_fallback TurboWeb.FallbackController

  plug :require_customer

  def index(conn, _params) do
    addresses = Addresses.list_addresses(conn.assigns.current_user.customer.id)
    render(conn, "index.json", addresses: addresses)
  end

  def create(conn, %{"name" => _name, "location" => _location} = address_params) do
    address_params = Map.put(address_params, "customer_id", conn.assigns.current_user.customer.id)

    with {:ok, %Address{} = address} <- Addresses.create_address(address_params) do
      conn
      |> put_status(:created)
      |> render("show.json", address: address)
    end
  end

  def show(conn, %{"id" => id}) do
    address = Addresses.get_address!(id, conn.assigns.current_user.customer.id)
    render(conn, "show.json", address: address)
  end

  def update(conn, %{"id" => id, "address" => address_params}) do
    address = Addresses.get_address!(id, conn.assigns.current_user.customer.id)

    with {:ok, %Address{} = address} <- Addresses.update_address(address, address_params) do
      render(conn, "show.json", address: address)
    end
  end

  def delete(conn, %{"id" => id}) do
    address = Addresses.get_address!(id, conn.assigns.current_user.customer.id)

    with {:ok, %Address{}} <- Addresses.delete_address(address) do
      send_resp(conn, :no_content, "")
    end
  end
end
