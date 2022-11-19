defmodule TurboWeb.RateConfigurationControllerTest do
  use TurboWeb.ConnCase

  alias Turbo.Rates

  @update_attrs %{
    min_rate: 43
  }
  @invalid_attrs %{min_rate: nil}

  setup %{conn: conn} do
    %{conn: conn} = register_and_log_in_admin(%{conn: conn})
    {:ok, conn: put_req_header(conn, "accept", "application/json")}
  end

  describe "update rate_configuration" do
    test "renders rate_configuration when data is valid", %{conn: conn} do
      rate_configuration = Rates.get_rate_configuration()
      id = rate_configuration.id

      conn =
        put(conn, Routes.rate_configuration_path(conn, :update), rate_configuration: @update_attrs)
        |> doc

      assert %{"id" => ^id} = json_response(conn, 200)["data"]

      conn = get(conn, Routes.rate_configuration_path(conn, :show)) |> doc

      assert %{
               "id" => ^id,
               "min_rate" => 43
             } = json_response(conn, 200)["data"]
    end

    test "renders errors when data is invalid", %{
      conn: conn
    } do
      conn =
        put(conn, Routes.rate_configuration_path(conn, :update),
          rate_configuration: @invalid_attrs
        )
        |> doc

      assert json_response(conn, 422)["errors"] != %{}
    end
  end
end
