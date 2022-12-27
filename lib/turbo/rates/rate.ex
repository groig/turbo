defmodule Turbo.Rates.Rate do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "rates" do
    field :type, Ecto.Enum, values: [:time, :area], default: :time
    field :area, Geo.PostGIS.Geometry
    field :description, :string
    field :end, :time
    field :name, :string
    field :rate_per_km_standard, :integer
    field :rate_per_km_premium, :integer
    field :rate_per_km_familiar, :integer
    field :fixed_rate_standard, :integer
    field :fixed_rate_premium, :integer
    field :fixed_rate_familiar, :integer
    field :start, :time
    field :enabled, :boolean, default: true

    timestamps()
  end

  @doc false
  def time_rate_changeset(rate, attrs) do
    rate
    |> cast(attrs, [
      :name,
      :description,
      :start,
      :end,
      :rate_per_km_standard,
      :rate_per_km_premium,
      :rate_per_km_familiar
    ])
    |> validate_required([
      :name,
      :start,
      :end,
      :rate_per_km_standard,
      :rate_per_km_premium,
      :rate_per_km_familiar
    ])
    |> validate_time_interval
    |> put_change(:type, :time)
  end

  defp validate_time_interval(changeset) do
    start_time = get_field(changeset, :start)
    end_time = get_field(changeset, :end)

    case Time.compare(start_time, end_time) do
      :lt ->
        changeset

      _ ->
        add_error(
          changeset,
          :end,
          "End time can't be lower than start time"
        )
    end
  end

  def area_rate_changeset(rate, attrs) do
    rate
    |> cast(attrs, [
      :name,
      :description,
      :area,
      :fixed_rate_standard,
      :fixed_rate_premium,
      :fixed_rate_familiar
    ])
    |> validate_required([
      :name,
      :area,
      :fixed_rate_standard,
      :fixed_rate_premium,
      :fixed_rate_familiar
    ])
    |> put_change(:type, :area)
  end
end
