defmodule Turbo.Repo.Migrations.CreateWallets do
  use Ecto.Migration

  def change do
    create table(:wallets, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :credit, :integer, default: 0
      add :driver_id, references(:drivers, on_delete: :delete_all, type: :binary_id), null: false

      timestamps()
    end

    create index(:wallets, [:driver_id])
  end
end
