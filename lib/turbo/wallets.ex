defmodule Turbo.Wallets do
  @moduledoc """
  The Wallets context.
  """

  import Ecto.Query, warn: false
  alias Turbo.Repo
  alias Ecto.Multi

  alias Turbo.Wallets.Wallet
  alias Turbo.Wallets.Transaction

  @doc """
  Gets a single wallet.

  Raises `Ecto.NoResultsError` if the Wallet does not exist.

  ## Examples

      iex> get_wallet!(123)
      %Wallet{}

      iex> get_wallet!(456)
      ** (Ecto.NoResultsError)

  """
  def get_wallet!(id), do: Repo.get!(Wallet, id)

  def credit_wallet(wallet_id, credit, transaction_type, transfer_id \\ nil) do
    wallet = get_wallet!(wallet_id)
    wallet_changeset = Wallet.credit_changeset(wallet, %{credit: wallet.credit + credit})

    multi =
      Multi.new()
      |> Multi.update(:wallet, wallet_changeset)
      |> Multi.run(:transaction, fn repo, %{wallet: wallet} ->
        transaction_changeset =
          Transaction.changeset(%Transaction{}, %{
            wallet_id: wallet.id,
            amount: credit,
            type: transaction_type,
            transfer_id: transfer_id
          })

        repo.insert(transaction_changeset)
      end)

    case Repo.transaction(multi) do
      {:ok, data} ->
        {:ok, data}

      {:error, _step, %Ecto.Changeset{} = changeset, _changes_so_far} ->
        {:error, changeset}
    end
  end
end
