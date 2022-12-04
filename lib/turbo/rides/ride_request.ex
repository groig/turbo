defmodule Turbo.Rides.RideRequest do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "ride_requests" do
    field :start_location, Geo.PostGIS.Geometry
    field :end_location, Geo.PostGIS.Geometry
    field :type, Ecto.Enum, values: [:standard, :comfort, :familiar], default: :standard
    field :accepted, :boolean, default: false
    belongs_to :customer, Turbo.Customers.Customer
    has_one :ride, Turbo.Rides.Ride

    timestamps()
  end

  @doc false
  def changeset(ride_request, attrs) do
    ride_request
    |> cast(attrs, [:start_location, :end_location, :customer_id, :type])
    |> validate_required([:start_location, :end_location, :customer_id, :type])
  end

  def accept_changeset(ride_request, attrs) do
    ride_request
    |> cast(attrs, [:accepted])
    |> validate_accepted
    |> put_change(:accepted, true)
  end

  defp validate_accepted(changeset) do
    accepted = get_field(changeset, :accepted)

    if accepted do
      add_error(
        changeset,
        :accepted,
        "This ride request was accepted already"
      )
    else
      changeset
    end
  end
end
