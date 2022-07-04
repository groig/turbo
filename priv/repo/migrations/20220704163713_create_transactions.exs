defmodule Turbo.Repo.Migrations.CreateTransactions do
  use Ecto.Migration

  def change do
    create table(:transactions, primary_key: false) do
      add(:id, :binary_id, primary_key: true)
      add(:amount, :decimal, default: 0)
      add(:type, :string, default: "cash")
      add(:wallet_id, references(:wallets, on_delete: :delete_all, type: :binary_id), null: false)

      timestamps()
    end

    create(index(:transactions, [:wallet_id]))
  end
end
