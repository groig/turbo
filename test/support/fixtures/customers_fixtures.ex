defmodule Turbo.CustomersFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Turbo.Customers` context.
  """
  alias Turbo.AccountsFixtures

  @doc """
  Generate a customer.
  """
  def customer_fixture(attrs \\ %{}) do
    user = AccountsFixtures.user_fixture()

    {:ok, customer} =
      attrs
      |> Enum.into(%{user_id: user.id})
      |> Turbo.Customers.create_customer()

    customer
  end
end
