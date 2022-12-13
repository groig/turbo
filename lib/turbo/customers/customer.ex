defmodule Turbo.Customers.Customer do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "customers" do
    belongs_to :user, Turbo.Accounts.User
    field :home_location, Geo.PostGIS.Geometry
    field :work_location, Geo.PostGIS.Geometry
    field :home_location_reverse_geocoding, :string
    field :work_location_reverse_geocoding, :string
    has_many :addresses, Turbo.Addresses.Address
    has_many :rides, Turbo.Rides.Ride
    has_many :ride_requests, Turbo.Rides.RideRequest
    timestamps()
  end

  @doc false
  def changeset(customer, attrs) do
    customer
    |> cast(attrs, [:user_id])
    |> validate_required([:user_id])
  end

  def home_location_changeset(customer, attrs) do
    customer
    |> cast(attrs, [:home_location, :home_location_reverse_geocoding])
    |> validate_required([:home_location])
  end

  def work_location_changeset(customer, attrs) do
    customer
    |> cast(attrs, [:work_location, :work_location_reverse_geocoding])
    |> validate_required([:work_location])
  end
end
