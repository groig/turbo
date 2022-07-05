defmodule Turbo.Wallets.Transaction do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id

  schema "transactions" do
    belongs_to :wallet, Turbo.Wallets.Wallet
    field :amount, :decimal, default: 0
    field :type, Ecto.Enum, values: [:card, :cash]
    field :transfer_id, :string

    timestamps()
  end

  @doc false
  def changeset(wallet, attrs) do
    wallet
    |> cast(attrs, [:wallet_id, :amount, :type, :transfer_id])
    |> validate_required([:wallet_id, :amount, :type])
    |> validate_transfer_id()
  end

  defp validate_transfer_id(changeset) do
    type = get_field(changeset, :type)
    transfer_id = get_field(changeset, :transfer_id)

    if type == :cash || (type == :card && transfer_id != nil && String.trim(transfer_id) != nil) do
      changeset
    else
      add_error(changeset, :transfer_id, "can't be blank when transaction type is card")
    end
  end
end
