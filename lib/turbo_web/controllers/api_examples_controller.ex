defmodule TurboWeb.ApiExamplesController do
  use TurboWeb, :controller

  def index(conn, _params) do
    md = File.read!("./docs/API.md")
    html = Earmark.as_html!(md)
    html(conn, html <> styles())
  end

  defp styles() do
    """
    <style>
    body {
      margin: 0 auto;
      max-width: 50em;
      font-family: "Helvetica", "Arial", sans-serif;
      line-height: 1.5;
      padding: 4em 1em;
      color: #555;
    }

    h2 {
      margin-top: 1em;
      padding-top: 1em;
    }

    h1,
    h2,
    strong {
      color: #333;
    }

    code {
      padding: 2px 4px;
      vertical-align: text-bottom;
    }

    pre {
      padding: 1em;
      border-left: 2px solid #69c;
    }

    code,
    pre {
      background: #f5f7f9;
      border-bottom: 1px solid #d8dee9;
      color: #00000;
    }

    </style>
    """
  end
end
