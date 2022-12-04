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
    field :customer_route, Geo.PostGIS.Geometry
    field :driver_route, Geo.PostGIS.Geometry
    field :charged, :decimal
    belongs_to :driver, Turbo.Drivers.Driver
    belongs_to :customer, Turbo.Customers.Customer
    belongs_to :ride_request, Turbo.Rides.RideRequest

    timestamps()
  end

  @doc false
  def changeset(ride, attrs) do
    ride
    |> cast(attrs, [:start_location, :end_location, :customer_id, :driver_id, :ride_request_id])
    |> validate_required([:start_location, :ride_request_id, :customer_id, :driver_id])
  end

  @doc false
  def customer_route_changeset(driver, attrs) do
    driver
    |> cast(attrs, [:customer_route])
    |> validate_required([:customer_route])
  end

  @doc false
  def driver_route_changeset(driver, attrs) do
    driver
    |> cast(attrs, [:driver_route])
    |> validate_required([:driver_route])
  end

  @doc false
  def customer_rating_changeset(driver, attrs) do
    driver
    |> cast(attrs, [:customer_rating])
    |> validate_required([:customer_rating])
  end

  @doc false
  def driver_rating_changeset(driver, attrs) do
    driver
    |> cast(attrs, [:driver_rating])
    |> validate_required([:driver_rating])
  end
end
