defmodule TurboWeb.RidesChannel do
  use TurboWeb, :channel

  @impl true
  def join("rides:lobby", _payload, socket) do
    if authorized?(socket.assigns.current_user) do
      {:ok, socket}
    else
      {:error, %{reason: "unauthorized"}}
    end
  end

  # Add authorization logic here as required.
  defp authorized?(user) do
    user.type == :driver
  end
end
