defmodule TurboWeb.RegistrationControllerTest do
  use TurboWeb.ConnCase, async: true

  import Turbo.AccountsFixtures
  alias Turbo.Accounts
  alias Turbo.Drivers
  alias Turbo.Customers

  describe "POST /auth/register customer" do
    @tag :capture_log
    test "creates customer and logs the user in", %{conn: conn} do
      email = unique_user_email()

      conn =
        post(conn, Routes.registration_path(conn, :create), %{
          "customer" => valid_user_attributes(email: email)
        })
        |> doc

      assert %{"id" => id, "token" => token} = Jason.decode!(conn.resp_body)
      user = Accounts.get_user_by_token(token)
      customer = Customers.get_customer!(id)
      assert user && customer
      assert user.id == customer.user_id
    end

    test "render errors for invalid data", %{conn: conn} do
      conn =
        post(conn, Routes.registration_path(conn, :create), %{
          "customer" => %{"email" => "with spaces", "password" => "toosmol"}
        })
        |> doc

      assert conn.resp_body =~ "must have the @ sign and no spaces"
      assert conn.resp_body =~ "should be at least 8 character"
    end
  end

  describe "POST /auth/register driver" do
    @tag :capture_log
    test "creates driver and logs the user in", %{conn: conn} do
      email = unique_user_email()

      conn =
        post(conn, Routes.registration_path(conn, :create), %{
          "driver" =>
            Map.merge(valid_user_attributes(email: email), %{"license" => "driver-license-abc"})
        })
        |> doc

      assert %{"id" => id, "token" => token} = Jason.decode!(conn.resp_body)
      user = Accounts.get_user_by_token(token)
      driver = Drivers.get_driver!(id)
      assert user && driver
      assert user.id == driver.user_id
    end

    test "render errors for invalid data", %{conn: conn} do
      email = unique_user_email()

      conn =
        post(conn, Routes.registration_path(conn, :create), %{
          "driver" => valid_user_attributes(email: email)
        })
        |> doc

      assert conn.resp_body =~ "can't be blank"
    end
  end

  describe "POST /auth/register admin" do
    @tag :capture_log
    test "creates admin", %{conn: conn} do
      email = unique_user_email()

      conn =
        post(conn, Routes.registration_path(conn, :create), %{
          "admin" => valid_user_attributes(email: email)
        })
        |> doc

      assert conn.resp_body =~ "Admin user created successfully"
    end

    test "render errors for invalid data", %{conn: conn} do
      conn =
        post(conn, Routes.registration_path(conn, :create), %{
          "admin" => %{"email" => "with spaces", "password" => "toosmol"}
        })
        |> doc

      assert conn.resp_body =~ "must have the @ sign and no spaces"
      assert conn.resp_body =~ "should be at least 8 character"
    end
  end
end
