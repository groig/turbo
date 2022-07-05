defmodule TurboWeb.WalletController do
  use TurboWeb, :controller

  alias Turbo.Wallets

  action_fallback TurboWeb.FallbackController

  plug :require_driver, [] when action == :show
  plug :require_admin, [] when action == :credit

  def show(conn, _) do
    render(conn, "show.json", wallet: conn.assigns.current_user.driver.wallet)
  end

  def credit(conn, %{
        "id" => id,
        "amount" => amount,
        "type" => "card",
        "transfer_id" => transfer_id
      }) do
    with {:ok, data} <-
           Wallets.credit_wallet(id, amount, "card", transfer_id) do
      render(conn, "show.json", wallet: data.wallet)
    end
  end

  def credit(conn, %{"id" => id, "amount" => amount, "type" => "cash"}) do
    with {:ok, data} <-
           Wallets.credit_wallet(id, amount, "cash") do
      render(conn, "show.json", wallet: data.wallet)
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
