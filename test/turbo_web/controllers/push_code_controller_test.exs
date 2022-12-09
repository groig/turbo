defmodule TurboWeb.PushCodeControllerTest do
  use TurboWeb.ConnCase

  @create_attrs %{
    code: "some code"
  }
  @invalid_attrs %{code: nil}

  setup %{conn: conn} do
    %{conn: conn} = register_and_log_in_user(%{conn: conn})
    {:ok, conn: put_req_header(conn, "accept", "application/json")}
  end

  describe "create push_code" do
    test "renders push_code when data is valid", %{conn: conn} do
      conn = post(conn, Routes.push_code_path(conn, :create), push_code: @create_attrs) |> doc
      assert %{"id" => _id} = json_response(conn, 201)["data"]
    end

    test "renders errors when data is invalid", %{conn: conn} do
      conn = post(conn, Routes.push_code_path(conn, :create), push_code: @invalid_attrs)
      assert json_response(conn, 422)["errors"] != %{}
    end
  end
end
