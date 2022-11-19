defmodule Turbo.Repo.Migrations.CreateRatesConfiguration do
  use Ecto.Migration

  def up do
    create table(:rates_configuration, primary_key: false) do
      add(:id, :binary_id, primary_key: true)
      add(:min_rate, :integer)

      timestamps()
    end

    execute(
      "INSERT INTO rates_configuration (id, min_rate, inserted_at, updated_at) VALUES (gen_random_uuid(), 250, now(), now())"
    )
  end

  def down do
    drop(table(:rates_configuration))
  end
end
