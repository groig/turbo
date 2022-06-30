defmodule TurboWeb.UserSettingsControllerTest do
  use TurboWeb.ConnCase, async: true

  alias Turbo.Accounts
  alias TurboWeb.UserAuth
  import Turbo.AccountsFixtures

  setup :register_and_log_in_user

  describe "PUT /auth/settings (change password form)" do
    test "updates the user password and resets tokens", %{conn: conn, user: user} do
      new_password_conn =
        put(conn, Routes.user_settings_path(conn, :update), %{
          "action" => "update_password",
          "current_password" => valid_user_password(),
          "passwords" => %{
            "password" => "new valid password",
            "password_confirmation" => "new valid password"
          }
        })

      old_token = UserAuth.fetch_token(conn)

      assert %{"message" => message, "token" => new_token} =
               Jason.decode!(new_password_conn.resp_body)

      assert message =~ "Password updated successfully"
      refute Accounts.get_user_by_token(old_token)
      assert user.id == Accounts.get_user_by_token(new_token).id
      assert Accounts.get_user_by_email_and_password(user.email, "new valid password")
    end

    test "does not update password on invalid data", %{conn: conn} do
      old_password_conn =
        put(conn, Routes.user_settings_path(conn, :update), %{
          "action" => "update_password",
          "current_password" => "invalid",
          "passwords" => %{
            "password" => "toosmol",
            "password_confirmation" => "does not match"
          }
        })

      assert old_password_conn.resp_body =~ "should be at least 8 character(s)"
      assert old_password_conn.resp_body =~ "does not match password"
      assert old_password_conn.resp_body =~ "is not valid"
      old_token = UserAuth.fetch_token(conn)
      assert Accounts.get_user_by_token(old_token)
    end
  end

  describe "PUT /auth/settings (change email form)" do
    @tag :capture_log
    test "updates the user email", %{conn: conn, user: user} do
      conn =
        put(conn, Routes.user_settings_path(conn, :update), %{
          "action" => "update_email",
          "current_password" => valid_user_password(),
          "email" => unique_user_email()
        })

      assert conn.resp_body =~ "A code to confirm your email"
      assert Accounts.get_user_by_email(user.email)
    end

    test "does not update email on invalid data", %{conn: conn} do
      conn =
        put(conn, Routes.user_settings_path(conn, :update), %{
          "action" => "update_email",
          "current_password" => "invalid",
          "email" => "with spaces"
        })

      assert conn.status == 400
      assert conn.resp_body =~ "must have the @ sign and no spaces"
      assert conn.resp_body =~ "is not valid"
    end
  end

  describe "GET /users/settings/confirm_email/:token" do
    setup %{user: user} do
      email = unique_user_email()

      token =
        extract_user_token(fn url ->
          Accounts.deliver_update_email_instructions(%{user | email: email}, user.email, url)
        end)

      %{token: token, email: email}
    end

    test "updates the user email once", %{conn: conn, user: user, token: token, email: email} do
      conn = get(conn, Routes.user_settings_path(conn, :confirm_email, token))
      assert conn.resp_body =~ "Email changed successfully"
      refute Accounts.get_user_by_email(user.email)
      assert Accounts.get_user_by_email(email)

      conn = get(conn, Routes.user_settings_path(conn, :confirm_email, token))
      assert conn.resp_body =~ "Email change code is invalid or it has expired"
    end

    test "does not update email with invalid token", %{conn: conn, user: user} do
      conn = get(conn, Routes.user_settings_path(conn, :confirm_email, "oops"))
      assert conn.resp_body =~ "Email change code is invalid or it has expired"
      assert Accounts.get_user_by_email(user.email)
    end

    test "deny access if user is not logged in", %{token: token} do
      conn = build_conn()
      conn = get(conn, Routes.user_settings_path(conn, :confirm_email, token))
      assert conn.resp_body =~ "Unauthorized"
    end
  end
end
