defmodule Turbo.Cars.Car do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "cars" do
    field :color, :string
    field :license_plate, :string
    field :make, :string
    field :model, :string
    field :type, Ecto.Enum, values: [:standard, :comfort, :familiar], default: :standard
    belongs_to :driver, Turbo.Drivers.Driver

    timestamps()
  end

  @doc false
  def changeset(car, attrs) do
    car
    |> cast(attrs, [:make, :model, :color, :license_plate, :driver_id, :type])
    |> validate_required([:make, :model, :color, :license_plate, :driver_id])
  end
end
