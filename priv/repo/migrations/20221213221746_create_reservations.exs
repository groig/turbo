defmodule Turbo.Repo.Migrations.CreateReservations do
  use Ecto.Migration

  def up do
    create table(:reservations, primary_key: false) do
      add(:id, :binary_id, primary_key: true)
      add(:name, :string)
      add(:identity_card, :string)
      add(:baggage, :boolean, default: false, null: false)
      add(:passenger_amount, :integer)
      add(:car_type, :string, default: "standard")
      add(:customer_id, references(:customers, on_delete: :delete_all, type: :binary_id))

      timestamps()
    end

    execute("SELECT AddGeometryColumn('reservations', 'start_location', 4326, 'POINT', 2)")
    execute("SELECT AddGeometryColumn('reservations', 'end_location', 4326, 'POINT', 2)")
    execute("ALTER TABLE reservations ALTER COLUMN start_location SET NOT NULL")

    create(index(:reservations, [:customer_id]))
  end
end
