defmodule TurboWeb.DriverControllerTest do
  use TurboWeb.ConnCase, async: true
  alias Turbo.DriversFixtures

  setup %{conn: conn} do
    {:ok, conn: put_req_header(conn, "accept", "application/json")}
  end

  describe "index" do
    test "lists all drivers when user is admin", %{conn: conn} do
      %{conn: conn} = register_and_log_in_admin(%{conn: conn})
      DriversFixtures.driver_fixture()
      DriversFixtures.driver_fixture()
      DriversFixtures.driver_fixture()

      conn =
        get(conn, Routes.driver_path(conn, :index))
        |> doc

      assert length(json_response(conn, 200)["data"]) == 3
    end

    test "lists only self ", %{conn: conn} do
      %{conn: conn, driver: driver} = register_and_log_in_driver(%{conn: conn})
      DriversFixtures.driver_fixture()
      DriversFixtures.driver_fixture()
      DriversFixtures.driver_fixture()

      conn =
        get(conn, Routes.driver_path(conn, :index))
        |> doc

      assert hd(json_response(conn, 200)["data"])["id"] == driver.id
    end
  end

  describe "show" do
    test "renders the requested driver to admin", %{conn: conn} do
      %{conn: conn} = register_and_log_in_admin(%{conn: conn})
      driver1 = DriversFixtures.driver_fixture()
      driver2 = DriversFixtures.driver_fixture()

      conn1 =
        get(conn, Routes.driver_path(conn, :show, driver1))
        |> doc

      assert json_response(conn1, 200)["data"]["id"] == driver1.id

      conn2 =
        get(conn, Routes.driver_path(conn, :show, driver2))
        |> doc

      assert json_response(conn2, 200)["data"]["id"] == driver2.id
    end

    test "only renders the driver to himself", %{conn: conn} do
      %{conn: conn, driver: driver} = register_and_log_in_driver(%{conn: conn})

      not_me = DriversFixtures.driver_fixture()

      resp_conn =
        get(conn, Routes.driver_path(conn, :show, driver))
        |> doc

      assert json_response(resp_conn, 200)["data"]["id"] == driver.id

      not_found_conn =
        get(conn, Routes.driver_path(conn, :show, not_me))
        |> doc

      assert not_found_conn.status == 404
    end
  end

  test "updates driver with the last reported location", %{conn: conn} do
    %{conn: conn, driver: driver} = register_and_log_in_driver(%{conn: conn})
    refute driver.last_location

    conn =
      put(conn, Routes.driver_path(conn, :location), %{
        last_location: %{
          coordinates: [
            30.2,
            20.3
          ],
          type: "Point"
        }
      })
      |> doc

    assert json_response(conn, 200)

    driver = Turbo.Repo.reload!(driver)
    assert driver.last_location
  end

  test "updates drivers license", %{conn: conn} do
    %{conn: conn, driver: driver} = register_and_log_in_driver(%{conn: conn})
    refute driver.last_location
    license = "license#{System.unique_integer()}"

    conn = put(conn, Routes.driver_path(conn, :license), %{license: license}) |> doc

    assert json_response(conn, 200)

    driver = Turbo.Repo.reload!(driver)
    assert driver.license == license
  end
end
