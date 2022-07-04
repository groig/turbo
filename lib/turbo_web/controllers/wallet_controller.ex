defmodule TurboWeb.WalletController do
  use TurboWeb, :controller

  alias Turbo.Wallets
  alias Turbo.Wallets.Wallet

  action_fallback TurboWeb.FallbackController

  plug :require_driver

  def show(conn, _) do
    render(conn, "show.json", wallet: conn.assigns.current_user.driver.wallet)
  end

  def credit(conn, %{"wallet" => wallet, "amount" => amount, "type" => type}) do
    with {:ok, %Wallet{} = wallet} <-
           Wallets.credit_wallet(wallet, amount, type) do
      render(conn, "show.json", wallet: wallet)
    end
  end

  defp require_driver(conn, _opts) do
    if conn.assigns[:current_user] && conn.assigns.current_user.type == :driver do
      conn
    else
      conn
      |> put_resp_content_type("application/json")
      |> send_resp(401, Jason.encode!("Unauthorized"))
      |> halt()
    end
  end
end
