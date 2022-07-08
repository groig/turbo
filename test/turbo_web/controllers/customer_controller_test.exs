defmodule TurboWeb.CustomerControllerTest do
  use TurboWeb.ConnCase, async: true
  alias Turbo.AccountsFixtures

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
end
