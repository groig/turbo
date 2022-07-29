defmodule TurboWeb.CustomerControllerTest do
  use TurboWeb.ConnCase, async: true
  alias Turbo.AccountsFixtures
  alias Turbo.CustomersFixtures

  alias TurboWeb.Auth

  setup %{conn: conn} do
    {:ok, conn: put_req_header(conn, "accept", "application/json")}
  end

  describe "index" do
    test "lists all customers", %{conn: conn} do
      admin = AccountsFixtures.user_fixture(%{type: :admin})

      admin_token = Auth.log_in_user(admin)

      conn =
        conn
        |> put_req_header("accept", "application/json")
        |> put_req_header("authorization", "Bearer #{admin_token}")
        |> get(Routes.customer_path(conn, :index))
        |> doc

      assert json_response(conn, 200)["data"] == []
    end
  end

  describe "show" do
    test "renders the requested customer to admin", %{conn: conn} do
      %{conn: conn} = register_and_log_in_admin(%{conn: conn})
      customer1 = CustomersFixtures.customer_fixture()
      customer2 = CustomersFixtures.customer_fixture()

      conn1 =
        get(conn, Routes.customer_path(conn, :show, customer1))
        |> doc

      assert json_response(conn1, 200)["id"] == customer1.id

      conn2 =
        get(conn, Routes.customer_path(conn, :show, customer2))
        |> doc

      assert json_response(conn2, 200)["id"] == customer2.id
    end

    test "only renders the customer to himself", %{conn: conn} do
      %{conn: conn, customer: customer} = register_and_log_in_customer(%{conn: conn})

      not_me = CustomersFixtures.customer_fixture()

      resp_conn =
        get(conn, Routes.customer_path(conn, :show, customer))
        |> doc

      assert json_response(resp_conn, 200)["id"] == customer.id

      not_found_conn =
        get(conn, Routes.customer_path(conn, :show, not_me))
        |> doc

      assert not_found_conn.status == 404
    end
  end
end
