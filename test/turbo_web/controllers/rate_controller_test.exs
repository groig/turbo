defmodule TurboWeb.RateControllerTest do
  use TurboWeb.ConnCase

  import Turbo.RatesFixtures

  alias Turbo.Rates.Rate

  @create_time_attrs %{
    description: "some description",
    end: ~N[2022-10-25 20:34:00],
    name: "some name",
    rate_per_km_standard: 42,
    rate_per_km_comfort: 43,
    rate_per_km_familiar: 44,
    start: ~N[2022-10-25 20:34:00]
  }

  @create_area_attrs %{
    description: "some description",
    name: "some name",
    fixed_rate_standard: 42,
    fixed_rate_comfort: 43,
    fixed_rate_familiar: 44,
    area: %{
      "coordinates" => [
        [[100.0, 0.0], [101.0, 0.0], [101.0, 1.0], [100.0, 1.0], [100.0, 0.0]]
      ],
      "type" => "Polygon"
    }
  }

  @update_time_attrs %{
    description: "some updated description",
    end: ~N[2022-10-26 20:34:00],
    name: "some updated name",
    rate_per_km_standard: 43,
    rate_per_km_comfort: 44,
    rate_per_km_familiar: 45,
    start: ~N[2022-10-26 20:34:00]
  }

  @update_area_attrs %{
    description: "some updated description",
    name: "some updated name",
    fixed_rate_standard: 43,
    fixed_rate_comfort: 44,
    fixed_rate_familiar: 45,
    area: %{
      "coordinates" => [
        [[101.0, 0.0], [101.0, 0.0], [101.0, 1.0], [100.0, 1.0], [101.0, 0.0]]
      ],
      "type" => "Polygon"
    }
  }
  @invalid_attrs %{area: nil, description: nil, end: nil, name: nil, rate_per_km: nil, start: nil}

  setup %{conn: conn} do
    %{conn: conn} = register_and_log_in_admin(%{conn: conn})
    {:ok, conn: put_req_header(conn, "accept", "application/json")}
  end

  describe "index" do
    test "lists all rates", %{conn: conn} do
      conn = get(conn, Routes.rate_path(conn, :index)) |> doc
      assert json_response(conn, 200)["data"] == []
      time_rate_fixture()
      conn = get(conn, Routes.rate_path(conn, :index)) |> doc
      assert length(json_response(conn, 200)["data"]) == 1
    end
  end

  describe "create time rate" do
    test "renders rate when data is valid", %{conn: conn} do
      conn =
        post(conn, Routes.rate_path(conn, :create_time_rate), rate: @create_time_attrs) |> doc

      assert %{"id" => id} = json_response(conn, 201)["data"]

      conn = get(conn, Routes.rate_path(conn, :show, id)) |> doc

      assert %{
               "id" => ^id,
               "description" => "some description",
               "end" => "2022-10-25T20:34:00",
               "name" => "some name",
               "rate_per_km_standard" => 42,
               "rate_per_km_comfort" => 43,
               "rate_per_km_familiar" => 44,
               "start" => "2022-10-25T20:34:00"
             } = json_response(conn, 200)["data"]
    end

    test "renders errors when data is invalid", %{conn: conn} do
      conn = post(conn, Routes.rate_path(conn, :create_time_rate), rate: @invalid_attrs) |> doc
      assert json_response(conn, 422)["errors"] != %{}
    end
  end

  describe "create area rate" do
    test "renders rate when data is valid", %{conn: conn} do
      conn =
        post(conn, Routes.rate_path(conn, :create_area_rate), rate: @create_area_attrs) |> doc

      assert %{"id" => id} = json_response(conn, 201)["data"]

      conn = get(conn, Routes.rate_path(conn, :show, id)) |> doc

      assert %{
               "id" => ^id,
               "description" => "some description",
               "name" => "some name",
               "fixed_rate_standard" => 42,
               "fixed_rate_comfort" => 43,
               "fixed_rate_familiar" => 44
             } = json_response(conn, 200)["data"]
    end

    test "renders errors when data is invalid", %{conn: conn} do
      conn = post(conn, Routes.rate_path(conn, :create_area_rate), rate: @invalid_attrs) |> doc
      assert json_response(conn, 422)["errors"] != %{}
    end
  end

  describe "update time rate" do
    setup [:create_time_rate]

    test "renders time rate when data is valid", %{conn: conn, rate: %Rate{id: id} = rate} do
      conn =
        put(conn, Routes.rate_path(conn, :update_time_rate, rate), rate: @update_time_attrs)
        |> doc

      assert %{"id" => ^id} = json_response(conn, 200)["data"]

      conn = get(conn, Routes.rate_path(conn, :show, id)) |> doc

      assert %{
               "id" => ^id,
               "description" => "some updated description",
               "end" => "2022-10-26T20:34:00",
               "name" => "some updated name",
               "rate_per_km_standard" => 43,
               "rate_per_km_comfort" => 44,
               "rate_per_km_familiar" => 45,
               "start" => "2022-10-26T20:34:00"
             } = json_response(conn, 200)["data"]
    end

    test "renders errors when data is invalid", %{conn: conn, rate: rate} do
      conn =
        put(conn, Routes.rate_path(conn, :update_time_rate, rate), rate: @invalid_attrs) |> doc

      assert json_response(conn, 422)["errors"] != %{}
    end
  end

  describe "update area rate" do
    setup [:create_area_rate]

    test "renders area rate when data is valid", %{conn: conn, rate: %Rate{id: id} = rate} do
      conn =
        put(conn, Routes.rate_path(conn, :update_area_rate, rate), rate: @update_area_attrs)
        |> doc

      assert %{"id" => ^id} = json_response(conn, 200)["data"]

      conn = get(conn, Routes.rate_path(conn, :show, id)) |> doc

      assert %{
               "id" => ^id,
               "description" => "some updated description",
               "name" => "some updated name",
               "fixed_rate_standard" => 43,
               "fixed_rate_comfort" => 44,
               "fixed_rate_familiar" => 45
             } = json_response(conn, 200)["data"]
    end

    test "renders errors when data is invalid", %{conn: conn, rate: rate} do
      conn =
        put(conn, Routes.rate_path(conn, :update_area_rate, rate), rate: @invalid_attrs) |> doc

      assert json_response(conn, 422)["errors"] != %{}
    end
  end

  describe "delete rate" do
    setup [:create_time_rate]

    test "deletes chosen rate", %{conn: conn, rate: rate} do
      conn = delete(conn, Routes.rate_path(conn, :delete, rate))
      assert response(conn, 204)

      assert_error_sent 404, fn ->
        get(conn, Routes.rate_path(conn, :show, rate))
      end
    end
  end

  defp create_area_rate(_) do
    rate = area_rate_fixture()
    %{rate: rate}
  end

  defp create_time_rate(_) do
    rate = time_rate_fixture()
    %{rate: rate}
  end
end
