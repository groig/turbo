defmodule Turbo.Rides.RideReservation do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "reservations" do
    field :baggage, :boolean, default: false
    field :car_type, Ecto.Enum, values: [:standard, :premium, :familiar], default: :standard
    field :status, Ecto.Enum, values: [:requested, :pending, :approved], default: :requested
    field :end_location, Geo.PostGIS.Geometry
    field :start_location, Geo.PostGIS.Geometry
    field :identity_card, :string
    field :name, :string
    field :passenger_amount, :integer
    field :start_time, :naive_datetime
    field :price, :decimal
    field :time, :integer
    belongs_to :customer, Turbo.Customers.Customer

    timestamps()
  end

  @doc false
  def changeset(ride_reservation, attrs) do
    ride_reservation
    |> cast(attrs, [
      :name,
      :identity_card,
      :start_location,
      :end_location,
      :baggage,
      :passenger_amount,
      :car_type,
      :customer_id,
      :start_time
    ])
    |> validate_required([
      :name,
      :identity_card,
      :start_location,
      :end_location,
      :baggage,
      :passenger_amount,
      :car_type,
      :customer_id,
      :start_time
    ])
  end
end
