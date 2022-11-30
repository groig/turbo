defmodule TurboWeb.NotificationView do
  use TurboWeb, :view
  alias TurboWeb.NotificationView

  def render("index.json", %{notifications: notifications}) do
    %{data: render_many(notifications, NotificationView, "notification.json")}
  end

  def render("show.json", %{notification: notification}) do
    %{data: render_one(notification, NotificationView, "notification.json")}
  end

  def render("notification.json", %{notification: notification}) do
    %{
      id: notification.id,
      title: notification.title,
      body: notification.body,
      read: notification.read
    }
  end
end
