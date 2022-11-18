defmodule Turbo.Repo.Migrations.CreateRates do
  use Ecto.Migration

  def change do
    create table(:rates, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :name, :string
      add :description, :string
      add :start, :naive_datetime
      add :end, :naive_datetime
      add :rate_per_km_standard, :integer
      add :rate_per_km_comfort, :integer
      add :rate_per_km_familiar, :integer
      add :fixed_rate_standard, :integer
      add :fixed_rate_comfort, :integer
      add :fixed_rate_familiar, :integer
      add :type, :string, default: "time"
      add :enabled, :boolean, default: true

      timestamps()
    end

    execute("SELECT AddGeometryColumn('rates', 'area', 4326, 'POLYGON', 2)")
  end
end
