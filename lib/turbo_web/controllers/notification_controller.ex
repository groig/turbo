defmodule TurboWeb.NotificationController do
  use TurboWeb, :controller

  alias Turbo.Notifications
  alias Turbo.Notifications.Notification

  action_fallback TurboWeb.FallbackController
  plug :require_admin, [] when action == :create
  plug :require_customer, [] when action != :create

  def index(conn, _params) do
    notifications = Notifications.list_notifications(conn.assigns.current_user.id)
    render(conn, "index.json", notifications: notifications)
  end

  def create(conn, %{"notification" => %{"to" => to} = notification_params})
      when to in ["all", "customers", "drivers"] do
    with {:ok, %Notification{} = notification} <-
           Notifications.create_notification(notification_params, to) do
      conn
      |> put_status(:created)
      |> put_resp_header("location", Routes.notification_path(conn, :show, notification))
      |> render("show.json", notification: notification)
    end
  end

  def show(conn, %{"id" => id}) do
    notification = Notifications.get_notification!(id, conn.assigns.current_user.id)
    render(conn, "show.json", notification: notification)
  end

  def update(conn, %{"id" => id, "notification" => notification_params}) do
    notification = Notifications.get_notification!(id, conn.assigns.current_user.id)

    with {:ok, %Notification{} = notification} <-
           Notifications.read_notification(notification, notification_params) do
      render(conn, "show.json", notification: notification)
    end
  end

  def delete(conn, %{"id" => id}) do
    notification = Notifications.get_notification!(id, conn.assigns.current_user.id)

    with {:ok, %Notification{}} <- Notifications.delete_notification(notification) do
      send_resp(conn, :no_content, "")
    end
  end
end
