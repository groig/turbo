defmodule TurboWeb.ResetPasswordController do
  use TurboWeb, :controller

  alias Turbo.Accounts

  action_fallback TurboWeb.FallbackController

  plug :get_user_by_reset_password_token when action in [:edit, :update]

  def create(conn, %{"email" => email}) do
    if user = Accounts.get_user_by_email(email) do
      Accounts.deliver_user_reset_password_instructions(user)
    end

    conn
    |> put_view(TurboWeb.MessageView)
    |> render("message.json",
      message:
        "If your email is in our system, you will receive instructions to reset your password shortly."
    )
  end

  # Do not log in the user after reset password to avoid a
  # leaked token giving the user access to the account.
  def update(
        conn,
        %{"password" => _new_password, "password_confirmation" => _new_password_confirmation} =
          user_params
      ) do
    with {:ok, _} <- Accounts.reset_user_password(conn.assigns.user, user_params) do
      conn
      |> put_view(TurboWeb.MessageView)
      |> render("message.json", message: "Password reset successfully.")
    end
  end

  defp get_user_by_reset_password_token(conn, _opts) do
    %{"token" => token} = conn.params

    if user = Accounts.get_user_by_reset_password_token(token) do
      conn |> assign(:user, user) |> assign(:token, token)
    else
      conn
      |> put_status(410)
      |> put_view(TurboWeb.ErrorView)
      |> render("error.json", error: "Reset password token is invalid or it has expired.")
      |> halt()
    end
  end
end
