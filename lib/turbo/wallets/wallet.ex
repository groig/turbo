defmodule Turbo.Wallets.Wallet do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "wallets" do

    belongs_to :driver, Turbo.Drivers.Driver
    field :credit, :integer, default: 0

    timestamps()
  end

  @doc false
  def changeset(wallet, attrs) do
    wallet
    |> cast(attrs, [:driver_id])
    |> validate_required([:driver_id])
  end
end
