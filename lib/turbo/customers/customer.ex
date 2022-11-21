defmodule Turbo.Customers.Customer do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "customers" do
    belongs_to :user, Turbo.Accounts.User
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
end
