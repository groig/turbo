defmodule Turbo.Rates do
  @moduledoc """
  The Rates context.
  """

  import Ecto.Query, warn: false
  import Geo.PostGIS
  alias Turbo.Repo

  alias Turbo.Rates.Rate

  @doc """
  Returns the list of rates.

  ## Examples

      iex> list_rates()
      [%Rate{}, ...]

  """
  def list_rates do
    Repo.all(Rate)
  end

  @doc """
  Gets a single rate.

  Raises `Ecto.NoResultsError` if the Rate does not exist.

  ## Examples

      iex> get_rate!(123)
      %Rate{}

      iex> get_rate!(456)
      ** (Ecto.NoResultsError)

  """
  def get_rate!(id), do: Repo.get!(Rate, id)

  @doc """
  Creates a rate.

  ## Examples

      iex> create_time_rate(%{field: value})
      {:ok, %Rate{}}

      iex> create_time_rate(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_time_rate(attrs \\ %{}) do
    %Rate{}
    |> Rate.time_rate_changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Creates a rate.

  ## Examples

      iex> create_area_rate(%{field: value})
      {:ok, %Rate{}}

      iex> create_area_rate(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_area_rate(attrs \\ %{}) do
    %Rate{}
    |> Rate.area_rate_changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a rate.

  ## Examples

      iex> update_time_rate(rate, %{field: new_value})
      {:ok, %Rate{}}

      iex> update_time_rate(rate, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_time_rate(%Rate{} = rate, attrs) do
    rate
    |> Rate.time_rate_changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Updates a rate.

  ## Examples

      iex> update_area_rate(rate, %{field: new_value})
      {:ok, %Rate{}}

      iex> update_area_rate(rate, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_area_rate(%Rate{} = rate, attrs) do
    rate
    |> Rate.area_rate_changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a rate.

  ## Examples

      iex> delete_rate(rate)
      {:ok, %Rate{}}

      iex> delete_rate(rate)
      {:error, %Ecto.Changeset{}}

  """
  def delete_rate(%Rate{} = rate) do
    Repo.delete(rate)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking rate changes.

  ## Examples

      iex> change_time_rate(rate)
      %Ecto.Changeset{data: %Rate{}}

  """
  def change_time_rate(%Rate{} = rate, attrs \\ %{}) do
    Rate.time_rate_changeset(rate, attrs)
  end

  def get_rate_for_ride(car_type, start_time, distance, destination) do
    case get_rate_for_point(destination) do
      %Rate{} = rate ->
        get_fixed_rate(rate, car_type)

      nil ->
        rate = start_time |> get_rate_for_time() |> get_rate_per_km(distance, car_type)
        rate_configuration = get_rate_configuration()

        if rate >= rate_configuration.min_rate do
          rate
        else
          rate_configuration.min_rate
        end
    end
  end

  defp get_rate_for_point(point) do
    query =
      from rate in Rate,
        where:
          rate.type == :area and
            st_contains(rate.area, ^point),
        order_by: [desc: rate.inserted_at]

    case Repo.all(query) do
      [] -> nil
      [rate | _] -> rate
    end
  end

  defp get_rate_for_time(start_time) do
    query =
      from rate in Rate,
        where: rate.type == :time and rate.start <= ^start_time and rate.end > ^start_time,
        order_by: [desc: rate.inserted_at]

    case Repo.all(query) do
      [rate | _] ->
        rate
    end
  end

  defp get_fixed_rate(rate, :standard) do
    rate.fixed_rate_standard
  end

  defp get_fixed_rate(rate, :premium) do
    rate.fixed_rate_premium
  end

  defp get_fixed_rate(rate, :familiar) do
    rate.fixed_rate_familiar
  end

  defp get_rate_per_km(rate, distance, :standard) do
    rate.rate_per_km_standard * distance
  end

  defp get_rate_per_km(rate, distance, :premium) do
    rate.rate_per_km_premium * distance
  end

  defp get_rate_per_km(rate, distance, :familiar) do
    rate.rate_per_km_familiar * distance
  end

  alias Turbo.Rates.RateConfiguration

  @doc """
  Gets a single rate_configuration.

  Raises `Ecto.NoResultsError` if the Rate configuration does not exist.

  ## Examples

      iex> get_rate_configuration()
      %RateConfiguration{}

  """
  def get_rate_configuration(), do: Repo.one(from(rc in RateConfiguration))

  @doc """
  Updates a rate_configuration.

  ## Examples

      iex> update_rate_configuration(rate_configuration, %{field: new_value})
      {:ok, %RateConfiguration{}}

      iex> update_rate_configuration(rate_configuration, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_rate_configuration(%RateConfiguration{} = rate_configuration, attrs) do
    rate_configuration
    |> RateConfiguration.changeset(attrs)
    |> Repo.update()
  end
end
