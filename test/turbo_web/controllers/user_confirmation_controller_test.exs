defmodule TurboWeb.UserConfirmationControllerTest do
  use TurboWeb.ConnCase, async: true

  alias Turbo.Accounts
  alias Turbo.Repo
  import Turbo.AccountsFixtures

  setup do
    %{user: user_fixture()}
  end

  describe "POST /auth/confirm" do
    @tag :capture_log
    test "sends a new confirmation token", %{conn: conn, user: user} do
      conn =
        post(conn, Routes.user_confirmation_path(conn, :create), %{"email" => user.email}) |> doc

      assert conn.resp_body =~ "If your email is in our system"
      assert Repo.get_by!(Accounts.UserToken, user_id: user.id).context == "confirm"
    end

    test "does not send confirmation token if User is confirmed", %{conn: conn, user: user} do
      Repo.update!(Accounts.User.confirm_changeset(user))

      conn =
        post(conn, Routes.user_confirmation_path(conn, :create), %{
          "email" => user.email
        })
        |> doc

      assert conn.resp_body =~ "If your email is in our system"
      refute Repo.get_by(Accounts.UserToken, user_id: user.id)
    end

    test "does not send confirmation token if email is invalid", %{conn: conn} do
      conn =
        post(conn, Routes.user_confirmation_path(conn, :create), %{
          "email" => "unknown@example.com"
        })
        |> doc

      assert conn.resp_body =~ "If your email is in our system"
      assert Repo.all(Accounts.UserToken) == []
    end
  end

  describe "POST /auth/confirm/:token" do
    test "confirms the given token once", %{conn: conn, user: user} do
      token =
        extract_user_token(fn url ->
          Accounts.deliver_user_confirmation_instructions(user, url)
        end)

      conn = post(conn, Routes.user_confirmation_path(conn, :update, token)) |> doc
      assert conn.resp_body =~ "User confirmed successfully"
      assert Accounts.get_user!(user.id).confirmed_at
      refute conn.assigns[:current_user]
      assert Repo.all(Accounts.UserToken) == []

      conn = post(conn, Routes.user_confirmation_path(conn, :update, token)) |> doc
      assert conn.status == 410
      assert conn.resp_body =~ "User confirmation code is invalid or it has expired"
    end

    test "does not confirm email with invalid token", %{conn: conn, user: user} do
      conn = post(conn, Routes.user_confirmation_path(conn, :update, "oops")) |> doc
      assert conn.status == 410
      assert conn.resp_body =~ "User confirmation code is invalid or it has expired"
      refute Accounts.get_user!(user.id).confirmed_at
    end
  end
end
