defmodule TurboWeb.RidesChannelTest do
  use TurboWeb.ChannelCase
  alias Ecto.UUID
  alias Turbo.Accounts
  alias Turbo.RidesFixtures
  alias Turbo.CarsFixtures
  alias Turbo.Drivers

  test "creating a ride request broadcasts the event to the rides channel" do
    # Driver needs a current_car to be able to join the rides channel
    driver = Turbo.DriversFixtures.driver_fixture(%{status: :available})
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

    ref = doc_push(socket, "ride:chat_message", %{"message" => "hello there"})
    assert_broadcast("ride:chat_message", %{"message" => "hello there"}) |> doc
    assert_reply(ref, :ok, %{"message" => "hello there"}) |> doc
  end

  test "driver can send  location messages to ride topic" do
    driver = Turbo.DriversFixtures.driver_fixture()
    user = Accounts.get_user!(driver.user_id)
    ride = RidesFixtures.ride_fixture(%{driver_id: driver.id})

    assert {:ok, _, socket} =
             TurboWeb.UserSocket
             |> socket(user.id, %{current_user: user})
             |> subscribe_and_join(TurboWeb.RidesChannel, "rides:" <> ride.id)

    ref = doc_push(socket, "ride:driver_location", %{"driver_location" => "hello there"})
    assert_broadcast("ride:driver_location", %{"driver_location" => "hello there"}) |> doc
    assert_reply(ref, :ok, %{"driver_location" => "hello there"}) |> doc
  end

  test "customer can send chat messages to ride topic" do
    customer = Turbo.CustomersFixtures.customer_fixture()
    user = Accounts.get_user!(customer.user_id)
    ride = RidesFixtures.ride_fixture(%{customer_id: customer.id})

    assert {:ok, _, socket} =
             TurboWeb.UserSocket
             |> socket(user.id, %{current_user: user})
             |> subscribe_and_join(TurboWeb.RidesChannel, "rides:" <> ride.id)

    ref = doc_push(socket, "ride:chat_message", %{"message" => "hello there"})
    assert_broadcast("ride:chat_message", %{"message" => "hello there"}) |> doc
    assert_reply(ref, :ok, %{"message" => "hello there"}) |> doc
  end

  test "customer can send location messages to ride topic" do
    customer = Turbo.CustomersFixtures.customer_fixture()
    user = Accounts.get_user!(customer.user_id)
    ride = RidesFixtures.ride_fixture(%{customer_id: customer.id})

    assert {:ok, _, socket} =
             TurboWeb.UserSocket
             |> socket(user.id, %{current_user: user})
             |> subscribe_and_join(TurboWeb.RidesChannel, "rides:" <> ride.id)

    ref = doc_push(socket, "ride:customer_location", %{"customer_location" => "hello there"})
    assert_broadcast("ride:customer_location", %{"customer_location" => "hello there"}) |> doc
    assert_reply(ref, :ok, %{"customer_location" => "hello there"}) |> doc
  end

  test "customer gets a notification when the driver is nearby" do
    customer = Turbo.CustomersFixtures.customer_fixture()
    customer_user = Accounts.get_user!(customer.user_id)

    driver = Turbo.DriversFixtures.driver_fixture()
    driver_user = Accounts.get_user!(driver.user_id)

    ride = RidesFixtures.ride_fixture(%{customer_id: customer.id, driver_id: driver.id})

    assert {:ok, _, _socket_customer} =
             TurboWeb.UserSocket
             |> socket(customer_user.id, %{
               current_user: customer_user,
               my_location: %{
                 coordinates: [-82.39689017625378, 23.14074368077616],
                 type: "Point"
               }
             })
             |> subscribe_and_join(TurboWeb.RidesChannel, "rides:" <> ride.id)

    assert {:ok, _, socket_driver} =
             TurboWeb.UserSocket
             |> socket(driver_user.id, %{
               current_user: driver_user
             })
             |> subscribe_and_join(TurboWeb.RidesChannel, "rides:" <> ride.id)

    doc_push(socket_driver, "ride:driver_location", %{
      "driver_location" => %{
        coordinates: [-82.39758338420903, 23.140209916284533],
        type: "Point"
      }
    })

    assert_push("ride:driver_nearby", %{"message" => "The driver is nearby"}) |> doc

    doc_push(socket_driver, "ride:driver_location", %{
      "driver_location" => %{
        coordinates: [-82.39758338420903, 23.140209916284533],
        type: "Point"
      }
    })

    refute_push("ride:driver_nearby", %{"message" => "The driver is nearby"})
  end

  test "driver gets a notification when the customer is nearby" do
    driver = Turbo.DriversFixtures.driver_fixture()
    driver_user = Accounts.get_user!(driver.user_id)

    customer = Turbo.CustomersFixtures.customer_fixture()
    customer_user = Accounts.get_user!(customer.user_id)

    ride = RidesFixtures.ride_fixture(%{driver_id: driver.id, customer_id: customer.id})

    assert {:ok, _, _socket_driver} =
             TurboWeb.UserSocket
             |> socket(driver_user.id, %{
               current_user: driver_user,
               my_location: %{
                 coordinates: [-82.39689017625378, 23.14074368077616],
                 type: "Point"
               }
             })
             |> subscribe_and_join(TurboWeb.RidesChannel, "rides:" <> ride.id)

    assert {:ok, _, socket_customer} =
             TurboWeb.UserSocket
             |> socket(customer_user.id, %{
               current_user: customer_user
             })
             |> subscribe_and_join(TurboWeb.RidesChannel, "rides:" <> ride.id)

    doc_push(socket_customer, "ride:customer_location", %{
      "customer_location" => %{
        coordinates: [-82.39758338420903, 23.140209916284533],
        type: "Point"
      }
    })

    assert_push("ride:customer_nearby", %{"message" => "The customer is nearby"}) |> doc

    doc_push(socket_customer, "ride:customer_location", %{
      "customer_location" => %{
        coordinates: [-82.39758338420903, 23.140209916284533],
        type: "Point"
      }
    })

    refute_push("ride:customer_nearby", %{"message" => "The customer is nearby"})
  end
end
