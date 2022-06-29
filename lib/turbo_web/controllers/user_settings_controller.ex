defmodule TurboWeb.UserSettingsController do
  use TurboWeb, :controller

  alias Turbo.Accounts
  alias TurboWeb.UserAuth

  def update(conn, %{"action" => "update_email"} = params) do
    %{"current_password" => password, "email" => email} = params
    user = conn.assigns.current_user

    case Accounts.apply_user_email(user, password, %{"email" => email}) do
      {:ok, applied_user} ->
        Accounts.deliver_update_email_instructions(applied_user, user.email)

        conn
        |> put_view(TurboWeb.MessageView)
        |> render("message.json",
          message: "A code to confirm your email change has been sent to the new address."
        )

      {:error, changeset} ->
        conn
        |> put_status(400)
        |> put_view(TurboWeb.MessageView)
        |> render("message.json", message: changeset_error_to_string(changeset))
    end
  end

  def update(conn, %{"action" => "update_password"} = params) do
    %{"current_password" => password, "passwords" => passwords} = params
    user = conn.assigns.current_user

    case Accounts.update_user_password(user, password, passwords) do
      {:ok, user} ->
        Accounts.delete_tokens(user)
        token = UserAuth.log_in_user(user)

        conn
        |> render("update_password.json", token: token, message: "Password updated successfully.")

      {:error, changeset} ->
        conn
        |> put_status(410)
        |> put_view(TurboWeb.MessageView)
        |> render("message.json", message: changeset_error_to_string(changeset))
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
        |> put_view(TurboWeb.MessageView)
        |> render("message.json", message: "Email change link is invalid or it has expired.")
    end
  end
end
