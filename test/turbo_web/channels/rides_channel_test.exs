defmodule TurboWeb.RidesChannelTest do
  use TurboWeb.ChannelCase
  alias Ecto.UUID
  alias Turbo.Accounts
  alias Turbo.RidesFixtures
  alias Turbo.CarsFixtures
  alias Turbo.Drivers

  test "joining the rides:lobby channel marks the driver as available" do
    # Driver needs a current_car to be able to join the rides channel
    driver = Turbo.DriversFixtures.driver_fixture()
    car = CarsFixtures.car_fixture(%{driver_id: driver.id, type: :familiar})
    Drivers.change_current_car(driver, %{current_car_id: car.id})

    refute driver.available

    user =
      Accounts.get_user!(driver.user_id)
      |> Turbo.Repo.preload(driver: [:current_car])

    {:ok, _, _socket} =
      TurboWeb.UserSocket
      |> socket(user.id, %{current_user: user})
      |> subscribe_and_join(TurboWeb.RidesChannel, "rides:lobby")

    driver = Turbo.Repo.reload!(driver)
    assert driver.available
  end

  test "leaving the rides:lobby channel marks the driver as unavailable" do
    # Driver needs a current_car to be able to join the rides channel
    driver = Turbo.DriversFixtures.driver_fixture()
    car = CarsFixtures.car_fixture(%{driver_id: driver.id, type: :familiar})
    Drivers.change_current_car(driver, %{current_car_id: car.id})

    refute driver.available

    user =
      Accounts.get_user!(driver.user_id)
      |> Turbo.Repo.preload(driver: [:current_car])

    {:ok, _, _socket} =
      TurboWeb.UserSocket
      |> socket(user.id, %{current_user: user})
      |> subscribe_and_join(TurboWeb.RidesChannel, "rides:lobby")

    driver = Turbo.Repo.reload!(driver)
    assert driver.available
  end

  test "creating a ride request broadcasts the event to the rides channel" do
    # Driver needs a current_car to be able to join the rides channel
    driver = Turbo.DriversFixtures.driver_fixture()
    car = CarsFixtures.car_fixture(%{driver_id: driver.id, type: :familiar})
    Drivers.change_current_car(driver, %{current_car_id: car.id})

    user =
      Accounts.get_user!(driver.user_id)
      |> Turbo.Repo.preload(driver: [:current_car])

    {:ok, _, _socket} =
      TurboWeb.UserSocket
      |> socket(user.id, %{current_user: user})
      |> subscribe_and_join(TurboWeb.RidesChannel, "rides:lobby")

    ride_request = RidesFixtures.ride_request_fixture(%{type: :familiar})
    id = ride_request.id
    assert_push("request:created", %{id: ^id}) |> doc
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
