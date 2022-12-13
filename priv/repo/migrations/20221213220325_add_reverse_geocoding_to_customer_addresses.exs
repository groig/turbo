defmodule Turbo.Repo.Migrations.AddReverseGeocodingToCustomerAddresses do
  use Ecto.Migration

  def change do
    alter table(:customers) do
      add(:work_location_reverse_geocoding, :string)
      add(:home_location_reverse_geocoding, :string)
    end
  end
end
