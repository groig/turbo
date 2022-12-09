defmodule Turbo.Notifications.PushCode do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "push_codes" do
    field :code, :string
    belongs_to :user, Turbo.Accounts.User

    timestamps()
  end

  @doc false
  def changeset(push_code, attrs) do
    push_code
    |> cast(attrs, [:code, :user_id])
    |> validate_required([:code, :user_id])
  end
end
