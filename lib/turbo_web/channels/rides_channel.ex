defmodule TurboWeb.RidesChannel do
  use TurboWeb, :channel
  alias Turbo.Rides

  @impl true
  def join("rides:lobby", _payload, socket) do
    if authorized?(socket.assigns.current_user) do
      {:ok, socket}
    else
      {:error, %{reason: "unauthorized"}}
    end
  end

  def join("rides:" <> ride_id, _payload, socket) do
    if ride_authorized?(ride_id, socket.assigns.current_user) do
      {:ok, socket}
    else
      {:error, %{reason: "unauthorized"}}
    end
  end

  @impl true
  def handle_in("chat_message", %{"message" => _message} = payload, socket) do
    broadcast_from!(socket, "chat_message", payload)
    {:reply, {:ok, payload}, socket}
  end

  # Add authorization logic here as required.
  defp authorized?(user) do
    user.type == :driver
  end

  defp ride_authorized?(ride_id, user) do
    case Rides.get_ride(ride_id) do
      nil ->
        false

      %Rides.Ride{} = ride ->
        case user.type do
          :customer -> user.customer.id == ride.customer_id
          :driver -> user.driver.id == ride.driver_id
        end
    end
  end
end
