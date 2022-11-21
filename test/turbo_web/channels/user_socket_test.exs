defmodule TurboWeb.UserSocketTest do
  use TurboWeb.ChannelCase, async: true
  alias TurboWeb.UserSocket

  alias TurboWeb.Auth

  test "fail to authenticate without token" do
    assert :error = connect(UserSocket, %{})
  end

  test "fail to authenticate with invalid token" do
    assert :error = connect(UserSocket, %{"token" => "abcdef"})
  end

  test "authenticate and assign user ID with valid token" do
    user = Turbo.AccountsFixtures.user_fixture()
    token = Auth.log_in_user(user)
    assert {:ok, socket} = connect(UserSocket, %{"token" => token})
    assert socket.assigns.current_user.id == user.id
  end
end
