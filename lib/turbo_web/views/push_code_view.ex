defmodule TurboWeb.PushCodeView do
  use TurboWeb, :view
  alias TurboWeb.PushCodeView

  def render("index.json", %{push_codes: push_codes}) do
    %{data: render_many(push_codes, PushCodeView, "push_code.json")}
  end

  def render("show.json", %{push_code: push_code}) do
    %{data: render_one(push_code, PushCodeView, "push_code.json")}
  end

  def render("push_code.json", %{push_code: push_code}) do
    %{
      id: push_code.id,
      code: push_code.code
    }
  end
end
