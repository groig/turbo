defmodule Turbo.Repo.Migrations.CreateAddresses do
  use Ecto.Migration

  def up do
    create table(:addresses, primary_key: false) do
      add(:id, :binary_id, primary_key: true)
      add(:name, :string)

      add(:customer_id, references(:customers, on_delete: :delete_all, type: :binary_id),
        null: false
      )

      timestamps()
    end

    execute("SELECT AddGeometryColumn('addresses', 'location', 4326, 'POINT', 2)")
    execute("ALTER TABLE addresses ALTER COLUMN location SET NOT NULL")

    create(index(:addresses, [:customer_id]))
  end

  def down do
    drop(table(:addresses))
  end
end
