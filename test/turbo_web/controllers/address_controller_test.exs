defmodule TurboWeb.AddressControllerTest do
  use TurboWeb.ConnCase, async: true

  import Turbo.AddressesFixtures

  alias Turbo.CustomersFixtures
  alias Turbo.Customers.Customer
  alias Turbo.Accounts.User
  alias TurboWeb.Auth
  alias Turbo.Repo

  @update_attrs %{
    location: %{
      "coordinates" => [42.2, 20.42],
      "type" => "Point"
    },
    name: "New Name"
  }
  @invalid_attrs %{name: nil, location: nil}

  setup %{conn: conn} do
    {:ok, conn: put_req_header(conn, "accept", "application/json")}
  end

  setup :register_and_log_in_customer

  describe "index" do
    test "lists all addresses for a customer", %{conn: conn} do
      conn = get(conn, Routes.address_path(conn, :index)) |> doc
      assert json_response(conn, 200) == []
    end
  end

  describe "create address" do
    test "renders address when data is valid", %{conn: conn} do
      attrs = %{
        name: "some address",
        location: %{
          "coordinates" => [30.2, 20.3],
          "type" => "Point"
        }
      }

      conn = post(conn, Routes.address_path(conn, :create), attrs) |> doc
      assert %{"id" => id} = json_response(conn, 201)

      conn = get(conn, Routes.address_path(conn, :show, id)) |> doc

      assert %{
               "id" => ^id
             } = json_response(conn, 200)
    end

    test "only the owner can see an address", %{conn: conn} do
      address = address_fixture()
      id = address.id

      owner = Repo.get!(Customer, address.customer_id)
      owner_user = Repo.get!(User, owner.user_id)
      owner_token = Auth.log_in_user(owner_user)

      not_owner = CustomersFixtures.customer_fixture()
      not_owner_user = Repo.get!(User, not_owner.user_id)
      not_owner_token = Auth.log_in_user(not_owner_user)

      conn =
        conn
        |> put_req_header("accept", "application/json")
        |> put_req_header("authorization", "Bearer #{owner_token}")
        |> get(Routes.address_path(conn, :show, address.id))
        |> doc

      assert %{
               "id" => ^id
             } = json_response(conn, 200)

      conn =
        build_conn()
        |> put_req_header("accept", "application/json")
        |> put_req_header("authorization", "Bearer #{not_owner_token}")
        |> get(Routes.address_path(conn, :show, address.id))
        |> doc

      assert conn.status == 404
    end

    test "renders errors when data is invalid", %{conn: conn} do
      conn = post(conn, Routes.address_path(conn, :create), @invalid_attrs) |> doc
      assert json_response(conn, 422)["errors"] != %{}
    end
  end

  describe "update address" do
    setup [:create_address]

    test "renders address when data is valid", %{conn: conn, address: address} do
      id = address.id
      conn = put(conn, Routes.address_path(conn, :update, address), address: @update_attrs) |> doc

      assert %{"id" => ^id} = json_response(conn, 200)

      conn = get(conn, Routes.address_path(conn, :show, id)) |> doc

      assert %{
               "id" => ^id
             } = json_response(conn, 200)
    end

    test "only owner can edit address", %{conn: conn, address: address} do
      not_owner = CustomersFixtures.customer_fixture()
      not_owner_user = Repo.get!(User, not_owner.user_id)
      not_owner_token = Auth.log_in_user(not_owner_user)

      conn =
        conn
        |> put_req_header("accept", "application/json")
        |> put_req_header("authorization", "Bearer #{not_owner_token}")
        |> put(Routes.address_path(conn, :update, address), address: @update_attrs)
        |> doc

      assert conn.status == 404
    end

    test "renders errors when data is invalid", %{conn: conn, address: address} do
      conn =
        put(conn, Routes.address_path(conn, :update, address), address: @invalid_attrs) |> doc

      assert json_response(conn, 422)["errors"] != %{}
    end
  end

  describe "delete address" do
    setup [:create_address]

    test "deletes chosen address", %{conn: conn, address: address} do
      conn = delete(conn, Routes.address_path(conn, :delete, address)) |> doc
      assert response(conn, 204)
      conn = get(conn, Routes.address_path(conn, :show, address)) |> doc
      assert conn.status == 404
    end

    test "only owner can delete address", %{conn: conn, address: address} do
      not_owner = CustomersFixtures.customer_fixture()
      not_owner_user = Repo.get!(User, not_owner.user_id)
      not_owner_token = Auth.log_in_user(not_owner_user)

      conn =
        conn
        |> put_req_header("accept", "application/json")
        |> put_req_header("authorization", "Bearer #{not_owner_token}")
        |> delete(Routes.address_path(conn, :delete, address))
        |> doc

      assert conn.status == 404
    end
  end

  defp create_address(_) do
    address = address_fixture()

    owner = Repo.get!(Customer, address.customer_id)
    owner_user = Repo.get!(User, owner.user_id)
    owner_token = Auth.log_in_user(owner_user)

    conn =
      build_conn()
      |> put_req_header("accept", "application/json")
      |> put_req_header("authorization", "Bearer #{owner_token}")

    %{address: address, conn: conn}
  end
end
