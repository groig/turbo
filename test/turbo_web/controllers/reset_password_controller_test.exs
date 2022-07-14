defmodule TurboWeb.ResetPasswordControllerTest do
  use TurboWeb.ConnCase, async: true

  alias Turbo.Accounts
  alias Turbo.Repo
  import Turbo.AccountsFixtures

  setup %{conn: conn} do
    {:ok, conn: put_req_header(conn, "accept", "application/json"), user: user_fixture()}
  end

  describe "POST /reset_password" do
    @tag :capture_log
    test "sends a new reset password token", %{conn: conn, user: user} do
      conn =
        post(conn, Routes.reset_password_path(conn, :create), %{"email" => user.email})
        |> doc

      assert conn.resp_body =~ "If your email is in our system"
      assert Repo.get_by!(Accounts.UserToken, user_id: user.id).context == "reset_password"
    end

    test "does not send reset password token if email is invalid", %{conn: conn} do
      conn =
        post(conn, Routes.reset_password_path(conn, :create), %{
          "email" => "unknown@example.com"
        })
        |> doc

      assert conn.resp_body =~ "If your email is in our system"
      assert Repo.all(Accounts.UserToken) == []
    end
  end

  describe "PUT /reset_password/:token" do
    setup %{user: user} do
      token =
        extract_user_token(fn url ->
          Accounts.deliver_user_reset_password_instructions(user, url)
        end)

      %{token: token}
    end

    test "resets password once", %{conn: conn, user: user, token: token} do
      conn =
        put(conn, Routes.reset_password_path(conn, :update, token), %{
          "password" => "new valid password",
          "password_confirmation" => "new valid password"
        })
        |> doc

      assert conn.resp_body =~ "Password reset successfully"
      assert Accounts.get_user_by_email_and_password(user.email, "new valid password")
    end

    test "does not reset password on invalid data", %{conn: conn, token: token} do
      conn =
        put(conn, Routes.reset_password_path(conn, :update, token), %{
          "password" => "toosmol",
          "password_confirmation" => "does not match"
        })
        |> doc

      assert conn.resp_body =~ "should be at least 8 character(s)"
      assert conn.resp_body =~ "does not match password"
    end

    test "does not reset password with invalid token", %{conn: conn} do
      conn = put(conn, Routes.reset_password_path(conn, :update, "oops")) |> doc
      assert conn.resp_body =~ "Reset password token is invalid or it has expired"
    end
  end
end
