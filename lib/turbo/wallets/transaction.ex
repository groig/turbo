defmodule Turbo.Wallets.Transaction do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id

  schema "transactions" do
    belongs_to :wallet, Turbo.Wallets.Wallet
    field :amount, :decimal, default: 0
    field :type, Ecto.Enum, values: [:card, :cash]

    timestamps()
  end

  @doc false
  def changeset(wallet, attrs) do
    wallet
    |> cast(attrs, [:wallet_id, :amount, :type])
    |> validate_required([:wallet_id, :amount, :type])
  end
end
