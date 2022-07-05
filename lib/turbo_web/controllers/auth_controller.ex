defmodule TurboWeb.AuthController do
  use TurboWeb, :controller

  alias Turbo.Accounts
  alias TurboWeb.Auth

  def create(conn, %{"email" => email, "password" => password}) do
    if user = Accounts.get_user_by_email_and_password(email, password) do
      token = Auth.log_in_user(user)
      conn |> render("token.json", token: token)
    else
      conn
      |> put_status(401)
      |> put_view(TurboWeb.ErrorView)
      |> render("error.json", error: "Invalid email or password.")
    end
  end

  def delete(conn, _params) do
    conn
    |> Auth.log_out_user()
    |> put_view(TurboWeb.MessageView)
    |> render("message.json", message: "Logged out successfully")
  end
end
