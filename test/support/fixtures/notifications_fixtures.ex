defmodule Turbo.NotificationsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Turbo.Notifications` context.
  """

  alias Turbo.AccountsFixtures

  @doc """
  Generate a notification.
  """
  def notification_fixture(attrs \\ %{}) do
    user = AccountsFixtures.user_fixture(%{type: :customer})

    {:ok, notification} =
      attrs
      |> Enum.into(%{
        body: "some body",
        title: "some title",
        user_id: user.id
      })
      |> Turbo.Notifications.create_notification()

    notification
  end

  @doc """
  Generate a push_code.
  """
  def push_code_fixture(attrs \\ %{}) do
    user = AccountsFixtures.user_fixture(%{type: :customer})

    {:ok, push_code} =
      attrs
      |> Enum.into(%{
        code: "some code",
        user_id: user.id
      })
      |> Turbo.Notifications.create_push_code()

    push_code
  end
end
