defmodule TurboWeb.SettingsView do
  use TurboWeb, :view

  def render("update_password.json", %{token: token, message: message}) do
    %{token: token, message: message}
  end
end