defmodule TurboWeb.ApiExamplesController do
  use TurboWeb, :controller

  def index(conn, _params) do
    md = File.read!("./docs/API.md")
    html = Earmark.as_html!(md)
    html(conn, html)
  end
end
