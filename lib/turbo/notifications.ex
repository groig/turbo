defmodule Turbo.Notifications do
  @moduledoc """
  The Notifications context.
  """

  import Ecto.Query, warn: false
  alias Turbo.Accounts
  alias Turbo.Repo

  alias Turbo.Notifications.Notification

  @doc """
  Returns the list of notifications.

  ## Examples

      iex> list_notifications()
      [%Notification{}, ...]

  """
  def list_notifications(user_id) do
    Repo.all(
      from(n in Notification, where: n.user_id == ^user_id, order_by: [desc: n.inserted_at])
    )
  end

  @doc """
  Gets a single notification.

  Raises `Ecto.NoResultsError` if the Notification does not exist.

  ## Examples

      iex> get_notification!(123)
      %Notification{}

      iex> get_notification!(456)
      ** (Ecto.NoResultsError)

  """
  def get_notification!(id, user_id) do
    Repo.one!(from(n in Notification, where: n.id == ^id and n.user_id == ^user_id))
  end

  @doc """
  Creates a notification.

  ## Examples

      iex> create_notification(%{field: value})
      {:ok, %Notification{}}

      iex> create_notification(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_notification(attrs \\ %{}, to \\ "all") do
    users =
      case to do
        "all" -> Accounts.list_users()
        "customers" -> Accounts.list_users(:customer)
        "drivers" -> Accounts.list_users(:driver)
      end

    changeset = Notification.changeset(%Notification{}, attrs)

    now = NaiveDateTime.utc_now() |> NaiveDateTime.truncate(:second)

    if changeset.valid? do
      data = Ecto.Changeset.apply_changes(changeset)

      notifications =
        Enum.map(users, fn user ->
          %{
            id: Ecto.UUID.generate(),
            title: data.title,
            body: data.body,
            read: false,
            inserted_at: now,
            updated_at: now,
            user_id: user.id
          }
        end)

      case Repo.insert_all(Notification, notifications, returning: true) do
        {0, _} ->
          {:error, "No users to notify"}

        {_, [_ | _] = notifications} ->
          Task.start(fn ->
            Enum.each(notifications, fn notification ->
              TurboWeb.Endpoint.broadcast("user:" <> notification.user_id, "notification", %{
                "body" => notification.body,
                "title" => notification.title
              })
            end)
          end)

          {:ok, hd(notifications)}
      end
    else
      {:error, changeset}
    end
  end

  @doc """
  Updates a notification.

  ## Examples

      iex> update_notification(notification, %{field: new_value})
      {:ok, %Notification{}}

      iex> update_notification(notification, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_notification(%Notification{} = notification, attrs) do
    notification
    |> Notification.changeset(attrs)
    |> Repo.update()
  end

  def read_notification(%Notification{} = notification, attrs) do
    notification
    |> Notification.read_changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a notification.

  ## Examples

      iex> delete_notification(notification)
      {:ok, %Notification{}}

      iex> delete_notification(notification)
      {:error, %Ecto.Changeset{}}

  """
  def delete_notification(%Notification{} = notification) do
    Repo.delete(notification)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking notification changes.

  ## Examples

      iex> change_notification(notification)
      %Ecto.Changeset{data: %Notification{}}

  """
  def change_notification(%Notification{} = notification, attrs \\ %{}) do
    Notification.changeset(notification, attrs)
  end
end
