defmodule TurboWeb.ConnCase do
  @moduledoc """
  This module defines the test case to be used by
  tests that require setting up a connection.

  Such tests rely on `Phoenix.ConnTest` and also
  import other functionality to make it easier
  to build common data structures and query the data layer.

  Finally, if the test case interacts with the database,
  we enable the SQL sandbox, so changes done to the database
  are reverted at the end of every test. If you are using
  PostgreSQL, you can even run database tests asynchronously
  by setting `use TurboWeb.ConnCase, async: true`, although
  this option is not recommended for other databases.
  """
  alias TurboWeb.Auth
  alias Turbo.Accounts

  use ExUnit.CaseTemplate

  using do
    quote do
      # Import conveniences for testing with connections
      import Plug.Conn
      import Phoenix.ConnTest
      import TurboWeb.ConnCase
      import Bureaucrat.Helpers

      alias TurboWeb.Router.Helpers, as: Routes

      # The default endpoint for testing
      @endpoint TurboWeb.Endpoint
    end
  end

  setup tags do
    Turbo.DataCase.setup_sandbox(tags)
    {:ok, conn: Phoenix.ConnTest.build_conn()}
  end

  @doc """
  Setup helper that registers and logs in users.

      setup :register_and_log_in_user

  It stores an updated connection and a registered user in the
  test context.
  """
  def register_and_log_in_user(%{conn: conn}) do
    user = Turbo.AccountsFixtures.user_fixture()
    token = Auth.log_in_user(user)
    conn = Plug.Conn.put_req_header(conn, "authorization", "Bearer #{token}")
    %{conn: conn, user: user}
  end

  def register_and_log_in_customer(%{conn: conn}) do
    customer = Turbo.CustomersFixtures.customer_fixture()
    user = Accounts.get_user!(customer.user_id)
    token = Auth.log_in_user(user)
    conn = Plug.Conn.put_req_header(conn, "authorization", "Bearer #{token}")
    %{conn: conn, user: user}
  end

  def register_and_log_in_driver(%{conn: conn}) do
    driver = Turbo.DriversFixtures.driver_fixture()
    user = Accounts.get_user!(driver.user_id)
    token = Auth.log_in_user(user)
    conn = Plug.Conn.put_req_header(conn, "authorization", "Bearer #{token}")
    %{conn: conn, user: user}
  end

  def register_and_log_in_admin(%{conn: conn}) do
    user = Turbo.AccountsFixtures.user_fixture(%{type: :admin})
    token = Auth.log_in_user(user)
    conn = Plug.Conn.put_req_header(conn, "authorization", "Bearer #{token}")
    %{conn: conn, user: user}
  end

  def log_in_user(conn, user) do
    token = Auth.log_in_user(user)
    conn = Plug.Conn.put_req_header(conn, "authorization", "Bearer #{token}")
    %{conn: conn, user: user}
  end
end
