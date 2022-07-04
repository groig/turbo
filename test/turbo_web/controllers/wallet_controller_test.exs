defmodule TurboWeb.WalletControllerTest do
  use TurboWeb.ConnCase, async: True

  alias Turbo.Drivers.Driver
  alias Turbo.Repo
  alias Turbo.Accounts.User
  alias TurboWeb.UserAuth

  import Turbo.WalletsFixtures

  setup %{conn: conn} do
    {:ok, conn: put_req_header(conn, "accept", "application/json")}
  end

  describe "show" do
    setup [:create_wallet]

    test "returns the drivers wallet", %{conn: conn} do
      conn = get(conn, Routes.wallet_path(conn, :show)) |> doc
      assert %{"id" => _id, "credit" => 0} = json_response(conn, 200)
    end
  end

  # describe "credit" do
  #   setup [:create_wallet]
  #   test "credits the drivers wallet", %{conn: conn, wallet: wallet} do
  #     conn = put(conn, Routes.wallet_path(conn, :credit), %{wallet: wallet.id, }) |> doc
  #     assert %{"id" => _id, "credit" => 0} = json_response(conn, 200)    end
  # end

  defp create_wallet(_) do
    wallet = wallet_fixture()

    owner = Repo.get!(Driver, wallet.driver_id)
    owner_user = Repo.get!(User, owner.user_id)
    owner_token = UserAuth.log_in_user(owner_user)

    conn =
      build_conn()
      |> put_req_header("accept", "application/json")
      |> put_req_header("authorization", "Bearer #{owner_token}")

    %{wallet: wallet, conn: conn}
  end
end
