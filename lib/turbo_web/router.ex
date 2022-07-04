defmodule TurboWeb.Router do
  use TurboWeb, :router

  import TurboWeb.UserAuth

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, {TurboWeb.LayoutView, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
    # plug :fetch_current_user
  end

  pipeline :api do
    plug :accepts, ["json"]
    plug :fetch_current_user
  end

  scope "/api/auth", TurboWeb do
    pipe_through :api

    post "/register", RegistrationController, :create
    post "/log_in", UserSessionController, :create
    delete "/log_out", UserSessionController, :delete
    post "/reset_password", UserResetPasswordController, :create
    put "/reset_password/:token", UserResetPasswordController, :update
    post "/confirm", UserConfirmationController, :create
    post "/confirm/:token", UserConfirmationController, :update
  end

  scope "/api/auth", TurboWeb do
    pipe_through [:api, :require_authenticated_user]
    get "/confirm_email/:token", UserSettingsController, :confirm_email
    put "/settings", UserSettingsController, :update
  end

  scope "/api", TurboWeb do
    pipe_through [:api, :require_authenticated_user]
    resources "/addresses", AddressController
    get "/wallets", WalletController, :show
    put "/wallets", WalletController, :credit
  end

  scope "/api", TurboWeb do
    pipe_through :api
    resources "/customers", CustomerController
    resources "/drivers", DriverController
    resources "/rides", RideController
    resources "/cars", CarController
  end

  # Enables LiveDashboard only for development
  #
  # If you want to use the LiveDashboard in production, you should put
  # it behind authentication and allow only admins to access it.
  # If your application does not have an admins-only section yet,
  # you can use Plug.BasicAuth to set up some basic authentication
  # as long as you are also using SSL (which you should anyway).
  if Mix.env() in [:dev, :test] do
    import Phoenix.LiveDashboard.Router

    scope "/" do
      pipe_through :browser

      live_dashboard "/dashboard", metrics: TurboWeb.Telemetry
    end
  end

  # Enables the Swoosh mailbox preview in development.
  #
  # Note that preview only shows emails that were sent by the same
  # node running the Phoenix server.
  if Mix.env() == :dev do
    scope "/dev" do
      pipe_through :browser

      forward "/mailbox", Plug.Swoosh.MailboxPreview
    end
  end
end
