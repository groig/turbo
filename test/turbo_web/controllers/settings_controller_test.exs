defmodule TurboWeb.SettingsControllerTest do
  use TurboWeb.ConnCase, async: true

  alias Turbo.Accounts
  alias TurboWeb.Auth
  import Turbo.AccountsFixtures

  setup %{conn: conn} do
    {:ok, conn: put_req_header(conn, "accept", "application/json")}
  end

  describe "GET /settings" do
    test "renders current admin", %{conn: _conn} = params do
      %{conn: conn, user: user} = register_and_log_in_admin(params)
      conn = get(conn, Routes.settings_path(conn, :show)) |> doc
      user_id = user.id
      assert %{"data" => %{"user" => %{"id" => ^user_id}}} = json_response(conn, 200)
    end

    test "renders current customer", %{conn: _conn} = params do
      %{conn: conn, user: user, customer: customer} = register_and_log_in_customer(params)

      conn = get(conn, Routes.settings_path(conn, :show)) |> doc

      user_id = user.id
      customer_id = customer.id

      assert %{"data" => %{"user" => %{"id" => ^user_id}, "customer" => %{"id" => ^customer_id}}} =
               json_response(conn, 200)
    end

    test "renders current driver", %{conn: _conn} = params do
      %{conn: conn, user: user, driver: driver} = register_and_log_in_driver(params)

      conn = get(conn, Routes.settings_path(conn, :show)) |> doc

      user_id = user.id
      driver_id = driver.id

      assert %{"data" => %{"user" => %{"id" => ^user_id}, "driver" => %{"id" => ^driver_id}}} =
               json_response(conn, 200)
    end
  end

  describe "PUT /settings (change password)" do
    setup [:register_and_log_in_user]

    test "updates the user password and resets tokens", %{conn: conn, user: user} do
      new_password_conn =
        put(conn, Routes.settings_path(conn, :update), %{
          "action" => "update_password",
          "current_password" => valid_user_password(),
          "passwords" => %{
            "password" => "new valid password",
            "password_confirmation" => "new valid password"
          }
        })
        |> doc

      old_token = Auth.fetch_token(conn)

      assert %{"data" => %{"message" => message, "token" => new_token}} =
               Jason.decode!(new_password_conn.resp_body)

      assert message =~ "Password updated successfully"
      refute Accounts.get_user_by_token(old_token)
      assert user.id == Accounts.get_user_by_token(new_token).id
      assert Accounts.get_user_by_email_and_password(user.email, "new valid password")
    end

    test "does not update password on invalid data", %{conn: conn} do
      old_password_conn =
        put(conn, Routes.settings_path(conn, :update), %{
          "action" => "update_password",
          "current_password" => "invalid",
          "passwords" => %{
            "password" => "toosmol",
            "password_confirmation" => "does not match"
          }
        })
        |> doc

      assert old_password_conn.resp_body =~ "should be at least 8 character(s)"
      assert old_password_conn.resp_body =~ "does not match password"
      assert old_password_conn.resp_body =~ "is not valid"
      old_token = Auth.fetch_token(conn)
      assert Accounts.get_user_by_token(old_token)
    end
  end

  describe "PUT /settings (change email)" do
    setup [:register_and_log_in_user]
    @tag :capture_log
    test "updates the user email", %{conn: conn, user: user} do
      conn =
        put(conn, Routes.settings_path(conn, :update), %{
          "action" => "update_email",
          "current_password" => valid_user_password(),
          "email" => unique_user_email()
        })
        |> doc

      assert conn.resp_body =~ "A code to confirm your email"
      assert Accounts.get_user_by_email(user.email)
    end

    test "does not update email on invalid data", %{conn: conn} do
      conn =
        put(conn, Routes.settings_path(conn, :update), %{
          "action" => "update_email",
          "current_password" => "invalid",
          "email" => "with spaces"
        })
        |> doc

      assert conn.status == 422
      assert conn.resp_body =~ "must have the @ sign and no spaces"
      assert conn.resp_body =~ "is not valid"
    end
  end

  describe "PUT /settings (update addresses)" do
    setup [:register_and_log_in_customer]

    test "updates the customer home address", %{conn: conn} do
      conn =
        put(conn, Routes.settings_path(conn, :update), %{
          "action" => "update_home_location",
          "home_location" => %{
            "coordinates" => [30.2, 20.3],
            "type" => "Point"
          }
        })
        |> doc

      assert json_response(conn, 200)["data"]["customer"]["home_location"] != nil
    end

    test "updates the customer work address", %{conn: conn} do
      conn =
        put(conn, Routes.settings_path(conn, :update), %{
          "action" => "update_work_location",
          "work_location" => %{
            "coordinates" => [30.2, 20.3],
            "type" => "Point"
          }
        })
        |> doc

      json_response(conn, 200)["data"]["customer"]["work_location"] != nil
    end
  end

  describe "PUT /settings (change name)" do
    setup [:register_and_log_in_user]
    @tag :capture_log
    test "updates the user name", %{conn: conn} do
      new_name = "user#{System.unique_integer()}"

      conn =
        put(conn, Routes.settings_path(conn, :update), %{
          "action" => "update_name",
          "name" => new_name
        })
        |> doc

      assert json_response(conn, 200)["message"] =~ "User name updated successfully"
    end

    test "does not update name on invalid data", %{conn: conn} do
      conn =
        put(conn, Routes.settings_path(conn, :update), %{
          "action" => "update_name",
          "name" => ""
        })
        |> doc

      assert json_response(conn, 422)
    end
  end

  describe "GET /users/settings/confirm_email/:token" do
    setup [:register_and_log_in_user]

    setup %{user: user} do
      email = unique_user_email()

      token =
        extract_user_token(fn url ->
          Accounts.deliver_update_email_instructions(%{user | email: email}, user.email, url)
        end)

      %{token: token, email: email}
    end

    test "updates the user email once", %{conn: conn, user: user, token: token, email: email} do
      conn = get(conn, Routes.settings_path(conn, :confirm_email, token)) |> doc
      assert conn.resp_body =~ "Email changed successfully"
      refute Accounts.get_user_by_email(user.email)
      assert Accounts.get_user_by_email(email)

      conn = get(conn, Routes.settings_path(conn, :confirm_email, token))
      assert conn.resp_body =~ "Email change code is invalid or it has expired"
    end

    test "does not update email with invalid token", %{conn: conn, user: user} do
      conn = get(conn, Routes.settings_path(conn, :confirm_email, "oops")) |> doc
      assert conn.resp_body =~ "Email change code is invalid or it has expired"
      assert Accounts.get_user_by_email(user.email)
    end

    test "deny access if user is not logged in", %{token: token} do
      conn = build_conn()
      conn = get(conn, Routes.settings_path(conn, :confirm_email, token))
      assert conn.resp_body =~ "Unauthorized"
    end
  end
end
