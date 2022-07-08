defmodule TurboWeb.WalletController do
  use TurboWeb, :controller

  alias Turbo.Wallets

  action_fallback TurboWeb.FallbackController

  plug :require_driver, [] when action == :show
  plug :require_admin, [] when action == :credit

  def show(conn, _) do
    driver = Turbo.Repo.preload(conn.assigns.current_user.driver, :wallet)
    render(conn, "show.json", wallet: driver.wallet)
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
end
