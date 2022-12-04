defmodule Turbo.Repo.Migrations.CreateCustomers do
  use Ecto.Migration

  def up do
    create table(:customers, primary_key: false) do
      add(:id, :binary_id, primary_key: true)
      add(:user_id, references("users", type: :binary_id, on_delete: :delete_all), null: false)

      timestamps()
    end
  end

  def down do
    drop(table(:customers))
  end
end
