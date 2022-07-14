defmodule TurboWeb.AuthTest do
  use TurboWeb.ConnCase, async: true

  alias Turbo.Accounts
  alias TurboWeb.Auth
  import Turbo.AccountsFixtures

  setup %{conn: conn} do
    conn =
      conn
      |> Map.replace!(:secret_key_base, TurboWeb.Endpoint.config(:secret_key_base))
      |> put_req_header("accept", "application/json")
      |> init_test_session(%{})

    %{user: user_fixture(), conn: conn}
  end

  describe "logout_user/1" do
    test "erases session and cookies", %{conn: conn, user: user} do
      user_token = Accounts.generate_user_token(user)

      conn =
        conn
        |> put_req_header("authorization", "Bearer #{user_token}")
        |> assign(:current_user, user)
        |> Auth.log_out_user()

      refute conn.assigns[:current_user]
      refute Accounts.get_user_by_token(user_token)
    end

    test "works even if user is already logged out", %{conn: conn} do
      conn = Auth.log_out_user(conn)
      refute conn.assigns[:current_user]
    end
  end

  describe "fetch_current_user/1" do
    test "authenticates user from session", %{conn: conn, user: user} do
      user_token = Accounts.generate_user_token(user)

      conn =
        conn
        |> put_req_header("authorization", "Bearer #{user_token}")
        |> Auth.fetch_current_user()

      assert conn.assigns.current_user.id == user.id
    end

    test "does not authenticate if data is missing", %{conn: conn, user: user} do
      _ = Accounts.generate_user_token(user)
      conn = Auth.fetch_current_user(conn)
      refute conn.assigns[:current_user]
    end
  end

  describe "require_authenticated_user/2" do
    test "rejects if user is not authenticated", %{conn: conn} do
      conn = Auth.require_authenticated_user(conn)
      assert conn.halted
      assert conn.resp_body =~ "Unauthorized"
    end
  end
end
