defmodule Turbo.Repo.Migrations.AddReverseGeocodingToAddress do
  use Ecto.Migration

  def change do
    alter(table(:addresses)) do
      add(:reverse_geocoding, :string)
    end
  end
end
