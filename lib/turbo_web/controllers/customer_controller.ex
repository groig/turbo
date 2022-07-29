defmodule TurboWeb.CustomerController do
  use TurboWeb, :controller

  alias Turbo.Customers

  action_fallback TurboWeb.FallbackController

  plug :require_admin, [] when action == :index

  def index(conn, _params) do
    customers = Customers.list_customers()
    render(conn, "index.json", customers: customers)
  end

  def show(%{assigns: %{current_user: %{type: :admin}}} = conn, %{"id" => id}) do
    render(conn, "show.json", customer: Customers.get_customer!(id))
  end

  def show(%{assigns: %{current_user: %{type: :customer}}} = conn, %{"id" => id}) do
    if id == conn.assigns.current_user.customer.id do
      render(conn, "show.json", customer: Customers.get_customer!(id))
    else
      conn
      |> put_resp_content_type("application/json")
      |> send_resp(404, Jason.encode!("Not Found"))
      |> halt()
    end
  end
end
