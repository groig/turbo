defmodule TurboWeb.UserSessionController do
  use TurboWeb, :controller
  use OpenApiSpex.ControllerSpecs
  alias TurboWeb.Schemas.Auth.{Login, LoginResponse}

  alias Turbo.Accounts
  alias TurboWeb.UserAuth

  tags ["users"]

  operation :create,
    summary: "Login user",
    request_body: {"Login params", "application/json", Login},
    responses: [
      ok: {"Login response", "application/json", LoginResponse}
    ]

  def create(conn, %{"email" => email, "password" => password}) do
    if user = Accounts.get_user_by_email_and_password(email, password) do
      token = UserAuth.log_in_user(user)
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
    |> UserAuth.log_out_user()
    |> put_view(TurboWeb.MessageView)
    |> render("message.json", message: "Logged out successfully")
  end
end
