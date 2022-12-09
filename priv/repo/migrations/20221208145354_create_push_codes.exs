defmodule Turbo.Repo.Migrations.CreatePushCodes do
  use Ecto.Migration

  def change do
    create table(:push_codes, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :code, :string
      add :user_id, references(:users, on_delete: :delete_all, type: :binary_id)

      timestamps()
    end

    create index(:push_codes, [:user_id])
  end
end
