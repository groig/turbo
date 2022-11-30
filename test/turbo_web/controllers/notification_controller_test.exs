defmodule TurboWeb.NotificationControllerTest do
  use TurboWeb.ConnCase

  import Turbo.NotificationsFixtures

  alias Turbo.Notifications.Notification
  alias Turbo.Repo
  alias Turbo.Accounts.User
  alias TurboWeb.Auth

  @create_attrs %{
    body: "some body",
    title: "some title",
    to: "all"
  }
  @invalid_attrs %{read: nil}

  setup %{conn: conn} do
    {:ok, conn: put_req_header(conn, "accept", "application/json")}
  end

  describe "index" do
    setup :register_and_log_in_customer

    test "lists all notifications", %{conn: conn} do
      conn = get(conn, Routes.notification_path(conn, :index))
      assert json_response(conn, 200)["data"] == []
    end
  end

  describe "create notification" do
    setup :register_and_log_in_admin

    test "renders notification when data is valid", %{conn: conn, user: user} do
      TurboWeb.Endpoint.subscribe("user:" <> user.id)
      conn = post(conn, Routes.notification_path(conn, :create), notification: @create_attrs)
      assert %{"id" => _id, "title" => title, "body" => body} = json_response(conn, 201)["data"]

      assert_receive %Phoenix.Socket.Broadcast{
        event: "notification",
        payload: %{"title" => ^title, "body" => ^body}
      }
    end

    test "renders errors when there are no users to notify", %{conn: conn} do
      conn =
        post(conn, Routes.notification_path(conn, :create),
          notification: %{
            body: "some body",
            title: "some title",
            to: "drivers"
          }
        )

      assert json_response(conn, 422)["errors"] != %{}
    end

    test "renders errors when data is invalid", %{conn: conn} do
      conn = post(conn, Routes.notification_path(conn, :create), notification: %{"to" => "all"})
      assert json_response(conn, 422)["errors"] != %{}
    end
  end

  describe "update notification" do
    setup [:create_notification]

    test "renders read notification when data is valid", %{
      conn: conn,
      notification: %Notification{id: id} = notification
    } do
      conn =
        put(conn, Routes.notification_path(conn, :update, notification),
          notification: %{
            read: true
          }
        )

      assert %{"id" => ^id} = json_response(conn, 200)["data"]

      conn = get(conn, Routes.notification_path(conn, :show, id))

      assert %{
               "id" => ^id,
               "read" => true
             } = json_response(conn, 200)["data"]
    end

    test "renders unread notification when data is valid", %{
      conn: conn,
      notification: %Notification{id: id} = notification
    } do
      conn =
        put(conn, Routes.notification_path(conn, :update, notification),
          notification: %{
            read: false
          }
        )

      assert %{"id" => ^id} = json_response(conn, 200)["data"]

      conn = get(conn, Routes.notification_path(conn, :show, id))

      assert %{
               "id" => ^id,
               "read" => false
             } = json_response(conn, 200)["data"]
    end

    test "renders errors when data is invalid", %{conn: conn, notification: notification} do
      conn =
        put(conn, Routes.notification_path(conn, :update, notification),
          notification: @invalid_attrs
        )

      assert json_response(conn, 422)["errors"] != %{}
    end
  end

  describe "delete notification" do
    setup [:create_notification]

    test "deletes chosen notification", %{conn: conn, notification: notification} do
      conn = delete(conn, Routes.notification_path(conn, :delete, notification))
      assert response(conn, 204)

      assert_error_sent 404, fn ->
        get(conn, Routes.notification_path(conn, :show, notification))
      end
    end
  end

  defp create_notification(_) do
    notification = notification_fixture()
    user = Repo.get!(User, notification.user_id)
    user_token = Auth.log_in_user(user)

    conn =
      build_conn()
      |> put_req_header("accept", "application/json")
      |> put_req_header("authorization", "Bearer #{user_token}")

    %{notification: notification, conn: conn}
  end
end
