defmodule TurboWeb.WalletView do
  use TurboWeb, :view
  alias TurboWeb.WalletView

  def render("index.json", %{wallets: wallets}) do
    %{data: render_many(wallets, WalletView, "wallet.json")}
  end

  def render("show.json", %{wallet: wallet}) do
    %{data: render_one(wallet, WalletView, "wallet.json")}
  end

  def render("wallet.json", %{wallet: wallet}) do
    %{
      id: wallet.id,
      credit: wallet.credit
    }
  end
end
