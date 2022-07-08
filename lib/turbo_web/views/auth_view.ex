defmodule TurboWeb.AuthView do
  use TurboWeb, :view

  def render("token.json", %{token: token}) do
    %{token: token}
  end
end