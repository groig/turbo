defmodule Turbo.Repo.Migrations.AddHomeWorkLocationToCustomer do
  use Ecto.Migration

  def change do
    execute("SELECT AddGeometryColumn('customers', 'home_location', 4326, 'POINT', 2)")
    execute("SELECT AddGeometryColumn('customers', 'work_location', 4326, 'POINT', 2)")
  end
end
