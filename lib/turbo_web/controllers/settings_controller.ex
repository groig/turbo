defmodule TurboWeb.SettingsController do
  use TurboWeb, :controller

  alias Turbo.Accounts
  alias TurboWeb.Auth

  action_fallback TurboWeb.FallbackController

  def update(conn, %{"action" => "update_email"} = params) do
    %{"current_password" => password, "email" => email} = params
    user = conn.assigns.current_user

    with {:ok, applied_user} <- Accounts.apply_user_email(user, password, %{"email" => email}) do
      Accounts.deliver_update_email_instructions(applied_user, user.email)

      conn
      |> put_view(TurboWeb.MessageView)
      |> render("message.json",
        message: "A code to confirm your email change has been sent to the new address."
      )
    end
  end

  def update(conn, %{"action" => "update_password"} = params) do
    %{"current_password" => password, "passwords" => passwords} = params
    user = conn.assigns.current_user

    with {:ok, user} <- Accounts.update_user_password(user, password, passwords) do
      Accounts.delete_tokens(user)
      token = Auth.log_in_user(user)

      render(conn, "update_password.json", token: token, message: "Password updated successfully.")
    end
  end

  def confirm_email(conn, %{"token" => token}) do
    case Accounts.update_user_email(conn.assigns.current_user, token) do
      :ok ->
        conn
        |> put_view(TurboWeb.MessageView)
        |> render("message.json", message: "Email changed successfully.")

      :error ->
        conn
        |> put_status(410)
        |> put_view(TurboWeb.ErrorView)
        |> render("error.json", error: "Email change code is invalid or it has expired.")
    end
  end
end
