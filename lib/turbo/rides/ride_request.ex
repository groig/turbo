defmodule Turbo.Rides.RideRequest do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "ride_requests" do
    field :start_location, Geo.PostGIS.Geometry
    belongs_to :customer, Turbo.Customers.Customer

    timestamps()
  end

  @doc false
  def changeset(ride_request, attrs) do
    ride_request
    |> cast(attrs, [:start_location, :customer_id])
    |> validate_required([:start_location, :customer_id])
  end
end
