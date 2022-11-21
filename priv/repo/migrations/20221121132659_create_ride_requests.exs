defmodule Turbo.Repo.Migrations.CreateRideRequests do
  use Ecto.Migration

  def up do
    create table(:ride_requests, primary_key: false) do
      add(:id, :binary_id, primary_key: true)
      add(:customer_id, references(:customers, on_delete: :nilify_all, type: :binary_id))

      timestamps()
    end

    execute("SELECT AddGeometryColumn('ride_requests', 'start_location', 4326, 'POINT', 2)")
    create(index(:ride_requests, [:customer_id]))
  end

  def down do
    drop(table(:ride_requests))
  end
end
