defmodule TurboWeb.Schemas.Auth do
  alias OpenApiSpex.Schema

  defmodule Login do
    require OpenApiSpex

    OpenApiSpex.schema(%{
      # The title is optional. It defaults to the last section of the module name.
      # So the derived title for MyApp.User is "User".
      title: "Login",
      description: "User login information",
      type: :object,
      properties: %{
        email: %Schema{type: :string, description: "User email", format: :email},
        password: %Schema{
          type: :string,
          description: "User password"
        }
      },
      required: [:name, :email],
      example: %{
        "email" => "user-123123123@email.com",
        "password" => "password123"
      }
    })
  end

  defmodule LoginResponse do
    require OpenApiSpex

    OpenApiSpex.schema(%{
      title: "LoginResponse",
      description: "Response schema for user login",
      type: :object,
      properties: %{
        token: %Schema{type: :string, description: "User token for interaction with the api"}
      },
      example: %{
        "token" => "some-random-string-123456"
      }
    })
  end
end
