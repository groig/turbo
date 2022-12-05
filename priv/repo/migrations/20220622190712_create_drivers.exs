defmodule Turbo.Repo.Migrations.CreateDrivers do
  use Ecto.Migration

  def up do
    create table(:drivers, primary_key: false) do
      add(:id, :binary_id, primary_key: true)
      add(:available, :boolean, default: false)
      add(:license, :string, null: false)
      add(:identity_card, :string, null: false)
      add(:user_id, references("users", type: :binary_id, on_delete: :delete_all), null: false)
      add(:status, :string, default: "unavailable")
      timestamps()
    end

    create(unique_index(:drivers, [:license]))
    create(unique_index(:drivers, [:identity_card]))
    execute("SELECT AddGeometryColumn('drivers', 'last_location', 4326, 'POINT', 2)")
  end

  def down do
    drop(table(:drivers))
  end
end
