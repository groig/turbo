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

  describe "push_codes" do
    alias Turbo.Notifications.PushCode

    import Turbo.NotificationsFixtures
    alias Turbo.AccountsFixtures

    @invalid_attrs %{code: nil}

    test "list_push_codes/0 returns all push_codes" do
      push_code = push_code_fixture()
      assert Notifications.list_push_codes(push_code.user_id) == [push_code]
    end

    test "get_push_code!/1 returns the push_code with given id" do
      push_code = push_code_fixture()
      assert Notifications.get_push_code!(push_code.id, push_code.user_id) == push_code
    end

    test "create_push_code/1 with valid data creates a push_code" do
      user = AccountsFixtures.user_fixture()
      valid_attrs = %{code: "some code", user_id: user.id}

      assert {:ok, %PushCode{} = push_code} = Notifications.create_push_code(valid_attrs)
      assert push_code.code == "some code"
    end

    test "create_push_code/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Notifications.create_push_code(@invalid_attrs)
    end

    test "update_push_code/2 with valid data updates the push_code" do
      push_code = push_code_fixture()
      update_attrs = %{code: "some updated code"}

      assert {:ok, %PushCode{} = push_code} =
               Notifications.update_push_code(push_code, update_attrs)

      assert push_code.code == "some updated code"
    end

    test "update_push_code/2 with invalid data returns error changeset" do
      push_code = push_code_fixture()

      assert {:error, %Ecto.Changeset{}} =
               Notifications.update_push_code(push_code, @invalid_attrs)

      assert push_code == Notifications.get_push_code!(push_code.id, push_code.user_id)
    end

    test "delete_push_code/1 deletes the push_code" do
      push_code = push_code_fixture()
      assert {:ok, %PushCode{}} = Notifications.delete_push_code(push_code)

      assert_raise Ecto.NoResultsError, fn ->
        Notifications.get_push_code!(push_code.id, push_code.user_id)
      end
    end

    test "change_push_code/1 returns a push_code changeset" do
      push_code = push_code_fixture()
      assert %Ecto.Changeset{} = Notifications.change_push_code(push_code)
    end
  end
end
