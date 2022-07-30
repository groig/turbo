defmodule Turbo.Rides.Ride do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "rides" do
    field :customer_rating, :integer
    field :driver_rating, :integer
    field :end_time, :naive_datetime
    field :start_time, :naive_datetime
    field :start_location, Geo.PostGIS.Geometry
    field :end_location, Geo.PostGIS.Geometry
    belongs_to :driver, Turbo.Drivers.Driver
    belongs_to :customer, Turbo.Customers.Customer

    timestamps()
  end

  @doc false
  def changeset(ride, attrs) do
    ride
    |> cast(attrs, [:start_location, :customer_id, :driver_id])
    |> validate_required([:start_location, :customer_id])
  end
end
