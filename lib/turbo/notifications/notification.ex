defmodule Turbo.Notifications.Notification do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "notifications" do
    field :body, :string
    field :title, :string
    field :read, :boolean, default: false
    belongs_to :user, Turbo.Accounts.User

    timestamps()
  end

  @doc false
  def changeset(notification, attrs) do
    notification
    |> cast(attrs, [:title, :body])
    |> validate_required([:title, :body])
  end

  def read_changeset(notification, attrs) do
    notification
    |> cast(attrs, [:read])
    |> validate_required([:read])
  end
end
