defmodule TurboWeb.UserChannelTest do
  use TurboWeb.ChannelCase

  setup do
    {:ok, _, socket} =
      TurboWeb.UserSocket
      |> socket("user_id", %{some: :assign})
      |> subscribe_and_join(TurboWeb.UserChannel, "user:lobby")

    %{socket: socket}
  end

  test "ping replies with status ok", %{socket: socket} do
    ref = doc_push(socket, "ping", %{"hello" => "there"})
    assert_reply(ref, :ok, %{"hello" => "there"}) |> doc
  end

  test "shout broadcasts to user:lobby", %{socket: socket} do
    doc_push(socket, "shout", %{"hello" => "all"})
    assert_broadcast("shout", %{"hello" => "all"}) |> doc
  end

  test "broadcasts are pushed to the client", %{socket: socket} do
    doc_broadcast_from!(socket, "broadcast", %{"some" => "data"})
    assert_push("broadcast", %{"some" => "data"}) |> doc
  end
end
