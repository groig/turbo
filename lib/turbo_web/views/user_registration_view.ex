defmodule TurboWeb.RegistrationView do
  use TurboWeb, :view

  def render("registration.json", %{id: id, token: token}) do
    %{
      token: token,
      id: id
    }
  end
end
