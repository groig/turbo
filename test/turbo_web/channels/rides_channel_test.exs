defmodule TurboWeb.RidesChannelTest do
  use TurboWeb.ChannelCase
  alias Ecto.UUID
  alias Turbo.Accounts
  alias Turbo.RidesFixtures

  test "creating a ride request broadcasts the event to the rides channel" do
    driver = Turbo.DriversFixtures.driver_fixture()
    user = Accounts.get_user!(driver.user_id)

    {:ok, _, _socket} =
      TurboWeb.UserSocket
      |> socket(user.id, %{current_user: user})
      |> subscribe_and_join(TurboWeb.RidesChannel, "rides:lobby")

    ride_request = RidesFixtures.ride_request_fixture()
    id = ride_request.id
    assert_broadcast("request:created", %{id: ^id}) |> doc
  end

  test "cant join channel of non existing ride" do
    driver = Turbo.DriversFixtures.driver_fixture()
    user = Accounts.get_user!(driver.user_id)

    assert {:error, %{reason: "unauthorized"}} =
             TurboWeb.UserSocket
             |> socket(user.id, %{current_user: user})
             |> subscribe_and_join(TurboWeb.RidesChannel, "rides:" <> UUID.generate())
  end

  test "driver can join channel of accepted ride" do
    driver = Turbo.DriversFixtures.driver_fixture()
    user = Accounts.get_user!(driver.user_id)
    ride = RidesFixtures.ride_fixture(%{driver_id: driver.id})

    assert {:ok, _, _} =
             TurboWeb.UserSocket
             |> socket(user.id, %{current_user: user})
             |> subscribe_and_join(TurboWeb.RidesChannel, "rides:" <> ride.id)
  end

  test "customer can join channel of accepted ride" do
    customer = Turbo.CustomersFixtures.customer_fixture()
    user = Accounts.get_user!(customer.user_id)
    ride = RidesFixtures.ride_fixture(%{customer_id: customer.id})

    assert {:ok, _, _} =
             TurboWeb.UserSocket
             |> socket(user.id, %{current_user: user})
             |> subscribe_and_join(TurboWeb.RidesChannel, "rides:" <> ride.id)
  end

  test "driver can send chat messages to ride topic" do
    driver = Turbo.DriversFixtures.driver_fixture()
    user = Accounts.get_user!(driver.user_id)
    ride = RidesFixtures.ride_fixture(%{driver_id: driver.id})

    assert {:ok, _, socket} =
             TurboWeb.UserSocket
             |> socket(user.id, %{current_user: user})
             |> subscribe_and_join(TurboWeb.RidesChannel, "rides:" <> ride.id)

    ref = doc_push(socket, "chat_message", %{"message" => "hello there"})
    assert_broadcast("chat_message", %{"message" => "hello there"}) |> doc
    assert_reply(ref, :ok, %{"message" => "hello there"}) |> doc
  end

  test "customer can send chat messages to ride topic" do
    customer = Turbo.CustomersFixtures.customer_fixture()
    user = Accounts.get_user!(customer.user_id)
    ride = RidesFixtures.ride_fixture(%{customer_id: customer.id})

    assert {:ok, _, socket} =
             TurboWeb.UserSocket
             |> socket(user.id, %{current_user: user})
             |> subscribe_and_join(TurboWeb.RidesChannel, "rides:" <> ride.id)

    ref = doc_push(socket, "chat_message", %{"message" => "hello there"})
    assert_broadcast("chat_message", %{"message" => "hello there"}) |> doc
    assert_reply(ref, :ok, %{"message" => "hello there"}) |> doc
  end
end
