defmodule Turbo.Repo.Migrations.AddHomeWorkLocationToCustomer do
  use Ecto.Migration

  def up do
    execute("SELECT AddGeometryColumn('customers', 'home_location', 4326, 'POINT', 2)")
    execute("SELECT AddGeometryColumn('customers', 'work_location', 4326, 'POINT', 2)")
  end

  def down do
    execute("SELECT DropGeometryColumn('customers', 'home_location')")
    execute("SELECT DropGeometryColumn('customers', 'work_location')")
  end
end
