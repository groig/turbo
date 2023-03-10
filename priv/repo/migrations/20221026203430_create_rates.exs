defmodule Turbo.Repo.Migrations.CreateRates do
  use Ecto.Migration

  def up do
    create table(:rates, primary_key: false) do
      add(:id, :binary_id, primary_key: true)
      add(:name, :string)
      add(:description, :string)
      add(:start, :time)
      add(:end, :time)
      add(:rate_per_km_standard, :integer)
      add(:rate_per_km_premium, :integer)
      add(:rate_per_km_familiar, :integer)
      add(:fixed_rate_standard, :integer)
      add(:fixed_rate_premium, :integer)
      add(:fixed_rate_familiar, :integer)
      add(:type, :string, default: "time")
      add(:enabled, :boolean, default: true)

      timestamps()
    end

    execute("SELECT AddGeometryColumn('rates', 'area', 4326, 'POLYGON', 2)")
  end

  def down do
    drop(table(:rates))
  end
end
