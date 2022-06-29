defmodule TurboWeb.UserSessionControllerTest do
  use TurboWeb.ConnCase, async: true

  import Turbo.AccountsFixtures
  alias Turbo.Accounts
  alias TurboWeb.UserAuth

  setup do
    %{user: user_fixture()}
  end

  describe "POST /auth/log_in" do
    test "logs the user in", %{conn: conn, user: user} do
      conn =
        post(conn, Routes.user_session_path(conn, :create), %{
          "email" => user.email,
          "password" => valid_user_password()
        })

      assert %{"token" => token} = Jason.decode!(conn.resp_body)
      assert user == Accounts.get_user_by_token(token)
    end

    test "emits error message with invalid credentials", %{conn: conn, user: user} do
      conn =
        post(conn, Routes.user_session_path(conn, :create), %{
          "email" => user.email,
          "password" => "invalid_password"
        })

      assert conn.status == 401
      assert conn.resp_body =~ "Invalid email or password"
    end
  end

  describe "DELETE /auth/log_out" do
    test "logs the user out", %{conn: conn, user: user} do
      %{conn: conn, user: user} = log_in_user(conn, user)
      conn = delete(conn, Routes.user_session_path(conn, :delete))
      token = UserAuth.fetch_token(conn)
      assert conn.resp_body =~ "Logged out successfully"
      # refute get_session(conn, :user_token)
    end

    test "succeeds even if the user is not logged in", %{conn: conn} do
      conn = delete(conn, Routes.user_session_path(conn, :delete))
      assert conn.resp_body =~ "Logged out successfully"
    end
  end
end
