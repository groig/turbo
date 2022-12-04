defmodule Turbo.Repo.Migrations.AddCurrentCarToDriver do
  use Ecto.Migration

  def change do
    alter table(:drivers) do
      add(:current_car_id, references(:cars, on_delete: :nilify_all, type: :binary_id), null: true)
    end

    create(unique_index(:drivers, [:current_car_id]))
  end
end
