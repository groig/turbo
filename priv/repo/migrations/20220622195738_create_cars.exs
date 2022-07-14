defmodule Turbo.Repo.Migrations.CreateCars do
  use Ecto.Migration

  def change do
    create table(:cars, primary_key: false) do
      add(:id, :binary_id, primary_key: true)
      add(:make, :string)
      add(:model, :string)
      add(:color, :string)
      add(:license_plate, :string)
      add(:type, :string, default: "standard")
      add(:driver_id, references(:drivers, on_delete: :delete_all, type: :binary_id), null: false)

      timestamps()
    end

    create(index(:cars, [:driver_id]))
    create(unique_index(:cars, [:license_plate]))
  end
end
