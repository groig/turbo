defmodule Turbo.Repo.Migrations.CreateDrivers do
  use Ecto.Migration

  def up do
    create table(:drivers, primary_key: false) do
      add(:id, :binary_id, primary_key: true)
      add(:license, :string, null: false)
      add(:user_id, references("users", type: :binary_id, on_delete: :delete_all), null: false)
      timestamps()
    end

    execute("SELECT AddGeometryColumn('drivers', 'last_location', 4326, 'POINT', 2)")
  end

  def down do
    drop(table(:drivers))
  end
end
