defmodule Turbo.Repo.Migrations.CreateRides do
  use Ecto.Migration

  def up do
    create table(:rides, primary_key: false) do
      add(:id, :binary_id, primary_key: true)
      add(:start_time, :naive_datetime)
      add(:end_time, :naive_datetime)
      add(:customer_rating, :integer)
      add(:driver_rating, :integer)
      add(:driver_id, references(:drivers, on_delete: :nilify_all, type: :binary_id))
      add(:customer_id, references(:customers, on_delete: :nilify_all, type: :binary_id))

      timestamps()
    end

    execute("SELECT AddGeometryColumn('rides', 'start_location', 4326, 'POINT', 2)")
    execute("ALTER TABLE rides ALTER COLUMN start_location SET NOT NULL")
    execute("SELECT AddGeometryColumn('rides', 'end_location', 4326, 'POINT', 2)")
    execute("SELECT AddGeometryColumn('rides', 'customer_route', 4326, 'LINESTRING', 2)")
    execute("SELECT AddGeometryColumn('rides', 'driver_route', 4326, 'LINESTRING', 2)")

    create(index(:rides, [:driver_id]))
    create(index(:rides, [:customer_id]))
  end

  def down() do
    drop(table(:rides))
  end
end
