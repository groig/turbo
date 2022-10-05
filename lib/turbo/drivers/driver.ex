defmodule Turbo.Drivers.Driver do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "drivers" do
    field :license, :string
    field :identity_card, :string
    belongs_to :user, Turbo.Accounts.User
    has_many :cars, Turbo.Cars.Car
    has_one :wallet, Turbo.Wallets.Wallet
    has_many :rides, Turbo.Rides.Ride
    field :last_location, Geo.PostGIS.Geometry

    timestamps()
  end

  @doc false
  def changeset(driver, attrs) do
    driver
    |> cast(attrs, [:license, :user_id, :identity_card])
    |> validate_required([:license, :user_id, :identity_card])
  end

  @doc false
  def last_location_changeset(driver, attrs) do
    driver
    |> cast(attrs, [:last_location])
    |> validate_required([:last_location])
  end

  @doc false
  def license_changeset(driver, attrs) do
    driver
    |> cast(attrs, [:license])
    |> validate_required([:license])
  end
end
