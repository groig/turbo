defmodule TurboWeb.PushCodeController do
  use TurboWeb, :controller

  alias Turbo.Notifications
  alias Turbo.Notifications.PushCode

  action_fallback TurboWeb.FallbackController

  def create(conn, %{"push_code" => push_code_params}) do
    push_code_params = Map.put(push_code_params, "user_id", conn.assigns.current_user.id)

    with {:ok, %PushCode{} = push_code} <- Notifications.create_push_code(push_code_params) do
      conn
      |> put_status(:created)
      |> render("show.json", push_code: push_code)
    end
  end
end
