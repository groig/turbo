defmodule Turbo.Repo.Migrations.AddPictureToUser do
  use Ecto.Migration

  def change do
    alter table(:users) do
      add(:picture, :string)
    end
  end
end
