defmodule TurboWeb.Auth do
  import Plug.Conn

  alias Turbo.Accounts

  @doc """
  Logs the user in.
  """
  def log_in_user(user) do
    Accounts.generate_user_token(user)
  end

  @doc """
  Logs the user out.

  It clears all session data for safety. See renew_session.
  """
  def log_out_user(conn) do
    user_token = fetch_token(conn)
    user_token && Accounts.delete_token(user_token)
    update_in(conn.assigns, &Map.delete(&1, :current_user))
  end

  @doc """
  Authenticates the user by looking into the database for the token
  """
  def fetch_current_user(conn, _opts \\ []) do
    token = fetch_token(conn)
    user = token && Accounts.get_user_by_token(token)
    assign(conn, :current_user, user)
  end

  def fetch_token(conn) do
    case get_req_header(conn, "authorization") do
      ["Bearer " <> token] -> token
      _ -> nil
    end
  end

  @doc """
  Used for routes that require the user to be authenticated.

  If you want to enforce the user email is confirmed before
  they use the application at all, here would be a good place.
  """
  def require_authenticated_user(conn, _opts \\ []) do
    if conn.assigns[:current_user] do
      conn
    else
      conn
      |> put_resp_content_type("application/json")
      |> send_resp(401, Jason.encode!("Unauthorized"))
      |> halt()
    end
  end
end
