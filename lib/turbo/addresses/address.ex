defmodule Turbo.Addresses.Address do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id

  schema "addresses" do
    field :name, :string
    field :location, Geo.PostGIS.Geometry
    field :reverse_geocoding, :string
    belongs_to :customer, Turbo.Customers.Customer

    timestamps()
  end

  @doc false
  def changeset(address, attrs) do
    address
    |> cast(attrs, [:name, :location, :customer_id, :reverse_geocoding])
    |> validate_required([:name, :location, :customer_id])
  end
end
