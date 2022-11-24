defmodule TurboWeb.UserChannelTest do
  use TurboWeb.ChannelCase
  alias Turbo.AccountsFixtures

  setup do
    user = AccountsFixtures.user_fixture()

    {:ok, _, socket} =
      TurboWeb.UserSocket
      |> socket(user.id, %{current_user: user})
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

  test "a user can only join its own topic", _ do
    user = AccountsFixtures.user_fixture()

    assert {:ok, _reply, _socket} =
             TurboWeb.UserSocket
             |> socket(user.id, %{current_user: user})
             |> subscribe_and_join(TurboWeb.UserChannel, "user:" <> user.id)

    assert {:error, :unauthorized} =
             TurboWeb.UserSocket
             |> socket(user.id, %{current_user: user})
             |> subscribe_and_join(TurboWeb.UserChannel, "user:" <> "random-user-id")
  end
end
