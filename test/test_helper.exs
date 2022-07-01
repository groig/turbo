ExUnit.start()

Bureaucrat.start(
  default_path: "docs/API.md",
  json_library: Jason
)

ExUnit.start(formatters: [ExUnit.CLIFormatter, Bureaucrat.Formatter])
Ecto.Adapters.SQL.Sandbox.mode(Turbo.Repo, :manual)
