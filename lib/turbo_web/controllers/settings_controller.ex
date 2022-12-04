defmodule TurboWeb.SettingsController do
  use TurboWeb, :controller

  alias Turbo.Accounts
  alias Turbo.Customers
  alias TurboWeb.Auth
  import TurboWeb.Auth

  action_fallback TurboWeb.FallbackController

  plug :require_authenticated_user, [] when action == :show

  def show(%{assigns: %{current_user: %{type: :admin}}} = conn, _params) do
    render(conn, "show_admin.json", user: conn.assigns.current_user)
  end

  def show(%{assigns: %{current_user: %{type: :customer}}} = conn, _params) do
    render(conn, "show_customer.json", user: conn.assigns.current_user)
  end

  def show(%{assigns: %{current_user: %{type: :driver}}} = conn, _params) do
    render(conn, "show_driver.json", user: conn.assigns.current_user)
  end

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

  def update(conn, %{"action" => "update_name"} = params) do
    %{"name" => name} = params
    user = conn.assigns.current_user

    with {:ok, _} <- Accounts.change_user_name(user, %{"name" => name}) do
      conn
      |> put_view(TurboWeb.MessageView)
      |> render("message.json",
        message: "User name updated successfully"
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

  def update(conn, %{"action" => "update_home_location"} = params) do
    with {:ok, customer} <-
           Customers.update_home_location(conn.assigns.current_user.customer, params) do
      user = conn.assigns.current_user |> Map.put(:customer, customer)

      render(conn, "show_customer.json", user: user)
    end
  end

  def update(conn, %{"action" => "update_work_location"} = params) do
    with {:ok, customer} <-
           Customers.update_work_location(conn.assigns.current_user.customer, params) do
      user = conn.assigns.current_user |> Map.put(:customer, customer)

      render(conn, "show_customer.json", user: user)
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
