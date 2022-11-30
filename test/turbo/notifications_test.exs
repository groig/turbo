defmodule Turbo.NotificationsTest do
  use Turbo.DataCase

  alias Turbo.Notifications

  describe "notifications" do
    alias Turbo.Notifications.Notification
    alias Turbo.AccountsFixtures

    import Turbo.NotificationsFixtures

    @invalid_attrs %{body: nil, title: nil}

    test "list_notifications/0 returns all notifications" do
      notification = notification_fixture()
      assert Notifications.list_notifications(notification.user_id) == [notification]
    end

    test "get_notification!/1 returns the notification with given id" do
      notification = notification_fixture()

      assert Notifications.get_notification!(notification.id, notification.user_id) ==
               notification
    end

    test "create_notification/1 with valid data creates a notification" do
      user = AccountsFixtures.user_fixture()
      valid_attrs = %{body: "some body", title: "some title", user_id: user.id}

      assert {:ok, %Notification{} = notification} =
               Notifications.create_notification(valid_attrs)

      assert notification.body == "some body"
      assert notification.title == "some title"
    end

    test "create_notification/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Notifications.create_notification(@invalid_attrs)
    end

    test "update_notification/2 with valid data updates the notification" do
      notification = notification_fixture()
      update_attrs = %{body: "some updated body", title: "some updated title"}

      assert {:ok, %Notification{} = notification} =
               Notifications.update_notification(notification, update_attrs)

      assert notification.body == "some updated body"
      assert notification.title == "some updated title"
    end

    test "update_notification/2 with invalid data returns error changeset" do
      notification = notification_fixture()

      assert {:error, %Ecto.Changeset{}} =
               Notifications.update_notification(notification, @invalid_attrs)

      assert notification ==
               Notifications.get_notification!(notification.id, notification.user_id)
    end

    test "delete_notification/1 deletes the notification" do
      notification = notification_fixture()
      assert {:ok, %Notification{}} = Notifications.delete_notification(notification)

      assert_raise Ecto.NoResultsError, fn ->
        Notifications.get_notification!(notification.id, notification.user_id)
      end
    end

    test "change_notification/1 returns a notification changeset" do
      notification = notification_fixture()
      assert %Ecto.Changeset{} = Notifications.change_notification(notification)
    end
  end
end
