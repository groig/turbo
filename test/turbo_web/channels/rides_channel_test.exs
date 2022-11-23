defmodule TurboWeb.RidesChannelTest do
  use TurboWeb.ChannelCase
  alias Turbo.Accounts
  alias Turbo.RidesFixtures

  setup do
    driver = Turbo.DriversFixtures.driver_fixture()
    user = Accounts.get_user!(driver.user_id)

    {:ok, _, socket} =
      TurboWeb.UserSocket
      |> socket(user.id, %{current_user: user})
      |> subscribe_and_join(TurboWeb.RidesChannel, "rides:lobby")

    %{socket: socket}
  end

  test "creating a ride request broadcasts the event to the rides channel", %{socket: _socket} do
    ride_request = RidesFixtures.ride_request_fixture()
    id = ride_request.id
    assert_broadcast("ride_request", %{id: ^id}) |> doc
  end
end
