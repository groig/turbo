defmodule TurboWeb.AuthView do
  use TurboWeb, :view

  def render("token.json", %{token: token}) do
    %{data: %{token: token}}
  end
end
