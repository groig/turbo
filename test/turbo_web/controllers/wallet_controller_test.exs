defmodule TurboWeb.WalletControllerTest do
  use TurboWeb.ConnCase, async: True

  alias Turbo.Drivers.Driver
  alias Turbo.Repo
  alias Turbo.Accounts.User
  alias TurboWeb.Auth
  alias Turbo.AccountsFixtures

  import Turbo.WalletsFixtures

  setup %{conn: conn} do
    {:ok, conn: put_req_header(conn, "accept", "application/json")}
  end

  describe "show" do
    setup [:create_wallet]

    test "returns the drivers wallet", %{conn: conn} do
      conn = get(conn, Routes.wallet_path(conn, :show)) |> doc
      assert %{"data" => %{"id" => _id, "credit" => 0}} = json_response(conn, 200)
    end
  end

  describe "credit" do
    setup [:create_wallet]

    test "credits the drivers wallet", %{conn: conn, wallet: wallet} do
      admin = AccountsFixtures.user_fixture(%{type: :admin})

      admin_token = Auth.log_in_user(admin)

      conn =
        build_conn()
        |> put_req_header("accept", "application/json")
        |> put_req_header("authorization", "Bearer #{admin_token}")
        |> put(Routes.wallet_path(conn, :credit, wallet), %{amount: 42, type: "cash"})
        |> doc

      assert %{"data" => %{"id" => _id, "credit" => 42}} = json_response(conn, 200)

      conn =
        build_conn()
        |> put_req_header("accept", "application/json")
        |> put_req_header("authorization", "Bearer #{admin_token}")
        |> put(Routes.wallet_path(conn, :credit, wallet), %{
          amount: 1,
          type: "card",
          transfer_id: "2233344455"
        })
        |> doc

      assert %{"data" => %{"id" => _id, "credit" => 43}} = json_response(conn, 200)
    end

    test "card transactions require an id", %{conn: _conn, wallet: wallet} do
      admin = AccountsFixtures.user_fixture(%{type: :admin})

      admin_token = Auth.log_in_user(admin)

      conn =
        build_conn()
        |> put_req_header("accept", "application/json")
        |> put_req_header("authorization", "Bearer #{admin_token}")

      assert_raise Phoenix.ActionClauseError, ~r/no function clause matching in/, fn ->
        put(conn, Routes.wallet_path(conn, :credit, wallet), %{
          wallet: wallet.id,
          amount: 42,
          type: "card"
        })
        |> doc
      end
    end

    test "only admin can credit a wallet", %{conn: conn, wallet: wallet} do
      conn =
        put(conn, Routes.wallet_path(conn, :credit, wallet), %{
          amount: 42,
          type: "cash"
        })
        |> doc

      assert conn.status == 401
    end
  end

  defp create_wallet(_) do
    wallet = wallet_fixture()

    owner = Repo.get!(Driver, wallet.driver_id)
    owner_user = Repo.get!(User, owner.user_id)
    owner_token = Auth.log_in_user(owner_user)

    conn =
      build_conn()
      |> put_req_header("accept", "application/json")
      |> put_req_header("authorization", "Bearer #{owner_token}")

    %{wallet: wallet, conn: conn}
  end
end
