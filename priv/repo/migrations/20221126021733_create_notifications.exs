defmodule Turbo.Repo.Migrations.CreateNotifications do
  use Ecto.Migration

  def change do
    create table(:notifications, primary_key: false) do
      add(:id, :binary_id, primary_key: true)
      add(:title, :string)
      add(:body, :string)
      add(:read, :boolean, default: false)
      add(:user_id, references(:users, on_delete: :delete_all, type: :binary_id), null: false)

      timestamps()
    end

    create(index(:notifications, [:user_id]))
  end
end
