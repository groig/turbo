defmodule Turbo.Addresses do
  @moduledoc """
  The Addresses context.
  """

  import Ecto.Query, warn: false
  alias Turbo.Repo

  alias Turbo.Addresses.Address

  @doc """
  Returns the list of addresses.

  ## Examples

      iex> list_addresses(customer_id)
      [%Address{}, ...]

  """
  def list_addresses(customer_id) do
    Repo.all(from(a in Address, where: a.customer_id == ^customer_id))
  end

  @doc """
  Gets a single address.
  """
  def get_address!(id, customer_id) do
    Repo.one!(from(a in Address, where: a.id == ^id and a.customer_id == ^customer_id))
  end

  @doc """
  Creates a address.

  ## Examples

      iex> create_address(%{field: value})
      {:ok, %Address{}}

      iex> create_address(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_address(attrs \\ %{}) do
    %Address{}
    |> Address.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a address.

  ## Examples

      iex> update_address(address, %{field: new_value})
      {:ok, %Address{}}

      iex> update_address(address, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_address(%Address{} = address, attrs) do
    address
    |> Address.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a address.

  ## Examples

      iex> delete_address(address)
      {:ok, %Address{}}

      iex> delete_address(address)
      {:error, %Ecto.Changeset{}}

  """
  def delete_address(%Address{} = address) do
    Repo.delete(address)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking address changes.

  ## Examples

      iex> change_address(address)
      %Ecto.Changeset{data: %Address{}}

  """
  def change_address(%Address{} = address, attrs \\ %{}) do
    Address.changeset(address, attrs)
  end
end
