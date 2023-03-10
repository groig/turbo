defmodule TurboWeb.AuthControllerTest do
  use TurboWeb.ConnCase, async: true

  import Turbo.AccountsFixtures
  alias Turbo.Accounts
  alias TurboWeb.Auth

  setup %{conn: conn} do
    {:ok, conn: put_req_header(conn, "accept", "application/json"), user: user_fixture()}
  end

  describe "POST /log_in" do
    test "logs the user in with email", %{conn: conn, user: user} do
      conn =
        post(conn, Routes.auth_path(conn, :create), %{
          "email_or_phone" => user.email,
          "password" => valid_user_password()
        })
        |> doc

      assert %{"data" => %{"token" => token}} = Jason.decode!(conn.resp_body)
      assert user.id == Accounts.get_user_by_token(token).id
    end

    test "logs the user in with phone", %{conn: conn, user: user} do
      conn =
        post(conn, Routes.auth_path(conn, :create), %{
          "email_or_phone" => user.phone,
          "password" => valid_user_password()
        })
        |> doc

      assert %{"data" => %{"token" => token}} = Jason.decode!(conn.resp_body)
      assert user.id == Accounts.get_user_by_token(token).id
    end

    test "emits error message with invalid credentials with email", %{conn: conn, user: user} do
      conn =
        post(conn, Routes.auth_path(conn, :create), %{
          "email_or_phone" => user.email,
          "password" => "invalid_password"
        })
        |> doc

      assert conn.status == 401
      assert conn.resp_body =~ "Invalid email, phone or password"
    end

    test "emits error message with invalid credentials with phone", %{conn: conn, user: user} do
      conn =
        post(conn, Routes.auth_path(conn, :create), %{
          "email_or_phone" => user.phone,
          "password" => "invalid_password"
        })
        |> doc

      assert conn.status == 401
      assert conn.resp_body =~ "Invalid email, phone or password"
    end
  end

  describe "DELETE /log_out" do
    test "logs the user out", %{conn: conn, user: user} do
      %{conn: conn, user: _user} = log_in_user(conn, user)
      conn = delete(conn, Routes.auth_path(conn, :delete)) |> doc
      assert conn.resp_body =~ "Logged out successfully"
      token = Auth.fetch_token(conn)
      refute Accounts.get_user_by_token(token)
    end

    test "succeeds even if the user is not logged in", %{conn: conn} do
      conn = delete(conn, Routes.auth_path(conn, :delete)) |> doc
      assert conn.resp_body =~ "Logged out successfully"
    end
  end
end
