defmodule TurboWeb.RidesChannel do
  use TurboWeb, :channel
  alias Turbo.Rides

  intercept ["request:created", "ride:driver_location", "ride:customer_location"]

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
      {:ok, assign(socket, nearby_notification_sent: false)}
    else
      {:error, %{reason: "unauthorized"}}
    end
  end

  @impl true
  def handle_in("ride:chat_message", %{"message" => _message} = payload, socket) do
    broadcast_from!(socket, "ride:chat_message", payload)
    {:reply, {:ok, payload}, socket}
  end

  def handle_in("ride:driver_location", %{"driver_location" => location} = payload, socket) do
    socket = assign(socket, my_location: location)
    broadcast_from!(socket, "ride:driver_location", payload)
    {:reply, {:ok, payload}, socket}
  end

  def handle_in("ride:customer_location", %{"customer_location" => location} = payload, socket) do
    socket = assign(socket, my_location: location)
    broadcast_from!(socket, "ride:customer_location", payload)
    {:reply, {:ok, payload}, socket}
  end

  @impl true
  def handle_out("request:created", payload, socket) do
    if payload.type == socket.assigns.current_user.driver.current_car.type do
      push(socket, "request:created", payload)
    end

    {:noreply, socket}
  end

  def handle_out("ride:driver_location", %{"driver_location" => location} = payload, socket) do
    socket =
      if socket.assigns[:my_location] != nil and not socket.assigns.nearby_notification_sent and
           nearby?(socket.assigns.my_location["coordinates"], location["coordinates"]) do
        push(socket, "ride:driver_nearby", %{"message" => "The driver is nearby"})
        assign(socket, nearby_notification_sent: true)
      else
        socket
      end

    push(socket, "ride:driver_location", payload)

    {:noreply, socket}
  end

  def handle_out("ride:customer_location", %{"customer_location" => location} = payload, socket) do
    socket =
      if socket.assigns[:my_location] != nil and not socket.assigns.nearby_notification_sent and
           nearby?(socket.assigns.my_location["coordinates"], location["coordinates"]) do
        push(socket, "ride:customer_nearby", %{"message" => "The customer is nearby"})
        assign(socket, nearby_notification_sent: true)
      else
        socket
      end

    push(socket, "ride:customer_location", payload)

    {:noreply, socket}
  end

  defp nearby?(point1, point2) do
    Geocalc.distance_between(
      point1,
      point2
    ) <
      100
  end

  # Add authorization logic here as required.
  defp authorized?(user) do
    user.type == :driver and user.driver.status == :available and
      user.driver.current_car_id != nil and
      Ecto.assoc_loaded?(user.driver.current_car)
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
