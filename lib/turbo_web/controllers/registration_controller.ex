defmodule TurboWeb.RegistrationController do
  use TurboWeb, :controller

  alias Turbo.Accounts
  alias TurboWeb.UserAuth

  def create(conn, %{"customer" => customer_params}) do
    customer_params = Map.put(customer_params, "type", :customer)

    case Accounts.register_customer(customer_params) do
      {:ok, data} ->
        {:ok, _} = Accounts.deliver_user_confirmation_instructions(data.user)

        token = UserAuth.log_in_user(data.user)
        render(conn, "registration.json", id: data.customer.id, token: token)

      {:error, %Ecto.Changeset{} = changeset} ->
        conn
        |> put_view(TurboWeb.ErrorView)
        |> render("error.json", changeset: changeset)
    end
  end

  def create(conn, %{"driver" => driver_params}) do
    driver_params = Map.put(driver_params, "type", :driver)

    case Accounts.register_driver(driver_params) do
      {:ok, data} ->
        {:ok, _} = Accounts.deliver_user_confirmation_instructions(data.user)

        token = UserAuth.log_in_user(data.user)
        render(conn, "registration.json", id: data.driver.id, token: token)

      {:error, %Ecto.Changeset{} = changeset} ->
        conn
        |> put_view(TurboWeb.ErrorView)
        |> render("error.json", changeset: changeset)
    end
  end

  def create(conn, %{"admin" => admin_params}) do
    admin_params = Map.put(admin_params, "type", :admin)

    case Accounts.register_user(admin_params) do
      {:ok, user} ->
        {:ok, _} = Accounts.deliver_user_confirmation_instructions(user)

        conn
        |> put_view(TurboWeb.MessageView)
        |> render("message.json", message: "Admin user created successfully ")

      {:error, %Ecto.Changeset{} = changeset} ->
        conn
        |> put_view(TurboWeb.ErrorView)
        |> render("error.json", changeset: changeset)
    end
  end
end
