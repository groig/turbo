defmodule TurboWeb.UserConfirmationController do
  use TurboWeb, :controller

  alias Turbo.Accounts

  def create(conn, %{"email" => email}) do
    if user = Accounts.get_user_by_email(email) do
      Accounts.deliver_user_confirmation_instructions(user)
    end

    conn
    |> put_view(TurboWeb.MessageView)
    |> render(
      "message.json",
      message:
        "If your email is in our system and it has not been confirmed yet, " <>
          "you will receive an email with instructions shortly."
    )
  end

  # Do not log in the user after confirmation to avoid a
  # leaked token giving the user access to the account.
  def update(conn, %{"token" => token}) do
    case Accounts.confirm_user(token) do
      {:ok, _} ->
        conn
        |> put_view(TurboWeb.MessageView)
        |> render("message.json", message: "User confirmed successfully.")

      :error ->
        conn
        |> put_status(410)
        |> put_view(TurboWeb.ErrorView)
        |> render("error.json",
          error: "User confirmation code is invalid or it has expired."
        )
    end
  end
end
