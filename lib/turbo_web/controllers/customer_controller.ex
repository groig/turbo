defmodule TurboWeb.CustomerController do
  use TurboWeb, :controller

  alias Turbo.Customers

  action_fallback TurboWeb.FallbackController

  plug :require_admin

  def index(conn, _params) do
    customers = Customers.list_customers()
    render(conn, "index.json", customers: customers)
  end
end
