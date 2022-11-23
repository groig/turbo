defmodule Turbo.Rides do
  @moduledoc """
  The Rides context.
  """

  import Ecto.Query, warn: false
  alias Turbo.Repo

  alias Turbo.Rides.Ride

  @doc """
  Returns the list of rides.

  ## Examples

      iex> list_rides()
      [%Ride{}, ...]

  """
  def list_rides do
    Repo.all(Ride)
  end

  def list_rides_for_customer(customer_id) do
    Repo.all(from r in Ride, where: r.customer_id == ^customer_id)
  end

  def list_rides_for_driver(driver_id) do
    Repo.all(from r in Ride, where: r.driver_id == ^driver_id)
  end

  @doc """
  Gets a single ride.

  Raises `Ecto.NoResultsError` if the Ride does not exist.

  ## Examples

      iex> get_ride!(123)
      %Ride{}

      iex> get_ride!(456)
      ** (Ecto.NoResultsError)

  """
  def get_ride!(id), do: Repo.get!(Ride, id)

  def get_ride_for_customer!(id, customer_id),
    do: Repo.get_by!(Ride, id: id, customer_id: customer_id)

  def get_ride_for_driver!(id, driver_id), do: Repo.get_by!(Ride, id: id, driver_id: driver_id)

  @doc """
  Creates a ride.

  ## Examples

      iex> create_ride(%{field: value})
      {:ok, %Ride{}}

      iex> create_ride(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_ride(attrs \\ %{}) do
    %Ride{}
    |> Ride.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a ride.

  ## Examples

      iex> update_ride(ride, %{field: new_value})
      {:ok, %Ride{}}

      iex> update_ride(ride, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_ride(%Ride{} = ride, attrs) do
    ride
    |> Ride.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a ride.

  ## Examples

      iex> delete_ride(ride)
      {:ok, %Ride{}}

      iex> delete_ride(ride)
      {:error, %Ecto.Changeset{}}

  """
  def delete_ride(%Ride{} = ride) do
    Repo.delete(ride)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking ride changes.

  ## Examples

      iex> change_ride(ride)
      %Ecto.Changeset{data: %Ride{}}

  """
  def change_ride(%Ride{} = ride, attrs \\ %{}) do
    Ride.changeset(ride, attrs)
  end

  def set_customer_route(%Ride{} = ride, attrs) do
    ride |> Ride.customer_route_changeset(attrs) |> Repo.update()
  end

  def set_driver_route(%Ride{} = ride, attrs) do
    ride |> Ride.driver_route_changeset(attrs) |> Repo.update()
  end

  alias Turbo.Rides.RideRequest

  @doc """
  Returns the list of ride_requests.

  ## Examples

      iex> list_ride_requests()
      [%RideRequest{}, ...]

  """
  def list_ride_requests do
    Repo.all(RideRequest)
  end

  @doc """
  Gets a single ride_request.

  Raises `Ecto.NoResultsError` if the Ride request does not exist.

  ## Examples

      iex> get_ride_request!(123)
      %RideRequest{}

      iex> get_ride_request!(456)
      ** (Ecto.NoResultsError)

  """
  def get_ride_request!(id), do: Repo.get!(RideRequest, id)

  @doc """
  Creates a ride_request.

  ## Examples

      iex> create_ride_request(%{field: value})
      {:ok, %RideRequest{}}

      iex> create_ride_request(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_ride_request(attrs \\ %{}) do
    with {:ok, ride_request} <-
           %RideRequest{}
           |> RideRequest.changeset(attrs)
           |> Repo.insert() do
      TurboWeb.Endpoint.broadcast!("rides:lobby", "ride_request", %{
        id: ride_request.id,
        start_location: ride_request.start_location
      })

      {:ok, ride_request}
    end
  end

  @doc """
  Updates a ride_request.

  ## Examples

      iex> update_ride_request(ride_request, %{field: new_value})
      {:ok, %RideRequest{}}

      iex> update_ride_request(ride_request, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_ride_request(%RideRequest{} = ride_request, attrs) do
    ride_request
    |> RideRequest.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a ride_request.

  ## Examples

      iex> delete_ride_request(ride_request)
      {:ok, %RideRequest{}}

      iex> delete_ride_request(ride_request)
      {:error, %Ecto.Changeset{}}

  """
  def delete_ride_request(%RideRequest{} = ride_request) do
    Repo.delete(ride_request)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking ride_request changes.

  ## Examples

      iex> change_ride_request(ride_request)
      %Ecto.Changeset{data: %RideRequest{}}

  """
  def change_ride_request(%RideRequest{} = ride_request, attrs \\ %{}) do
    RideRequest.changeset(ride_request, attrs)
  end
end
