defmodule Turbo.Wallets.Wallet do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "wallets" do
    belongs_to :driver, Turbo.Drivers.Driver
    has_many :transactions, Turbo.Wallets.Transaction
    field :credit, :integer, default: 0

    timestamps()
  end

  @doc false
  def changeset(wallet, attrs) do
    wallet
    |> cast(attrs, [:driver_id])
    |> validate_required([:driver_id])
  end

  @doc false
  def credit_changeset(wallet, attrs) do
    wallet
    |> cast(attrs, [:credit])
    |> validate_required([:credit])
    |> validate_number(:credit, greater_than: 0)
  end
end
