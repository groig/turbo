defmodule TurboWeb.MessageView do
  use TurboWeb, :view

  def render("message.json", %{message: message}) do
    %{message: message}
  end
end
