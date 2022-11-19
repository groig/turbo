defmodule Turbo.Rates.RateConfiguration do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "rates_configuration" do
    field :min_rate, :integer

    timestamps()
  end

  @doc false
  def changeset(rate_configuration, attrs) do
    rate_configuration
    |> cast(attrs, [:min_rate])
    |> validate_required([:min_rate])
  end
end
