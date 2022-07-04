defmodule TurboWeb.RegistrationController do
  use TurboWeb, :controller

  alias Turbo.Accounts
  alias TurboWeb.UserAuth

  action_fallback TurboWeb.FallbackController

  def create(conn, %{"customer" => customer_params}) do
    customer_params = Map.put(customer_params, "type", :customer)

    with {:ok, data} <- Accounts.register_customer(customer_params) do
      {:ok, _} = Accounts.deliver_user_confirmation_instructions(data.user)

      token = UserAuth.log_in_user(data.user)

      conn
      |> put_status(:created)
      |> render("registration.json", id: data.customer.id, token: token)
    end
  end

  def create(conn, %{"driver" => driver_params}) do
    driver_params = Map.put(driver_params, "type", :driver)

    with {:ok, data} <- Accounts.register_driver(driver_params) do
      {:ok, _} = Accounts.deliver_user_confirmation_instructions(data.user)

      token = UserAuth.log_in_user(data.user)

      conn
      |> put_status(:created)
      |> render("registration.json", id: data.driver.id, token: token)
    end
  end

  def create(conn, %{"admin" => admin_params}) do
    admin_params = Map.put(admin_params, "type", :admin)

    with {:ok, user} <- Accounts.register_user(admin_params),
         {:ok, _} <- Accounts.deliver_user_confirmation_instructions(user) do
      conn
      |> put_status(:created)
      |> put_view(TurboWeb.MessageView)
      |> render("message.json", message: "Admin user created successfully ")
    end
  end
end
