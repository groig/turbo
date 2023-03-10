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

  def get_ride(id), do: Repo.get(Ride, id)

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

  def set_customer_rating(%Ride{} = ride, attrs) do
    ride |> Ride.customer_rating_changeset(attrs) |> Repo.update()
  end

  def set_driver_rating(%Ride{} = ride, attrs) do
    ride |> Ride.driver_rating_changeset(attrs) |> Repo.update()
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
  def get_ride_request!(id), do: Repo.get!(RideRequest, id) |> Repo.preload(:customer)

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
      TurboWeb.Endpoint.broadcast!("rides:lobby", "request:created", %{
        id: ride_request.id,
        type: ride_request.type,
        start_location: ride_request.start_location,
        end_location: ride_request.end_location
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

  def accept_ride_request(id, driver) do
    ride_request = get_ride_request!(id)

    ride_changeset =
      Ride.changeset(%Ride{}, %{
        start_location: ride_request.start_location,
        customer_id: ride_request.customer.id,
        ride_request_id: ride_request.id,
        driver_id: driver.id
      })

    multi =
      Ecto.Multi.new()
      |> Ecto.Multi.update(:ride_request, RideRequest.accept_changeset(ride_request, %{}))
      |> Ecto.Multi.insert(:ride, ride_changeset)

    case Repo.transaction(multi) do
      {:ok, data} ->
        TurboWeb.Endpoint.broadcast("rides:lobby", "request:accepted", %{id: ride_request.id})

        TurboWeb.Endpoint.broadcast("user:" <> driver.user_id, "ride:created", %{id: data.ride.id})

        TurboWeb.Endpoint.broadcast("user:" <> ride_request.customer.user_id, "ride:created", %{
          id: data.ride.id
        })

        {:ok, data.ride_request}

      {:error, _step, %Ecto.Changeset{} = changeset, _changes_so_far} ->
        {:error, changeset}
    end
  end

  alias Turbo.Rides.RideReservation

  @doc """
  Returns the list of reservations.

  ## Examples

      iex> list_reservations()
      [%RideReservation{}, ...]

  """
  def list_reservations do
    Repo.all(RideReservation)
  end

  def list_reservations(customer_id) do
    Repo.all(from r in RideReservation, where: r.customer_id == ^customer_id)
  end

  @doc """
  Gets a single ride_reservation.

  Raises `Ecto.NoResultsError` if the Ride reservation does not exist.

  ## Examples

      iex> get_ride_reservation!(123)
      %RideReservation{}

      iex> get_ride_reservation!(456)
      ** (Ecto.NoResultsError)

  """
  def get_ride_reservation!(id), do: Repo.get!(RideReservation, id)

  def get_ride_reservation!(id, customer_id),
    do: Repo.one!(from r in RideReservation, where: r.id == ^id and r.customer_id == ^customer_id)

  @doc """
  Creates a ride_reservation.

  ## Examples

      iex> create_ride_reservation(%{field: value})
      {:ok, %RideReservation{}}

      iex> create_ride_reservation(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_ride_reservation(attrs \\ %{}) do
    %RideReservation{}
    |> RideReservation.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a ride_reservation.

  ## Examples

      iex> update_ride_reservation(ride_reservation, %{field: new_value})
      {:ok, %RideReservation{}}

      iex> update_ride_reservation(ride_reservation, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_ride_reservation(%RideReservation{} = ride_reservation, attrs) do
    ride_reservation
    |> RideReservation.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a ride_reservation.

  ## Examples

      iex> delete_ride_reservation(ride_reservation)
      {:ok, %RideReservation{}}

      iex> delete_ride_reservation(ride_reservation)
      {:error, %Ecto.Changeset{}}

  """
  def delete_ride_reservation(%RideReservation{} = ride_reservation) do
    Repo.delete(ride_reservation)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking ride_reservation changes.

  ## Examples

      iex> change_ride_reservation(ride_reservation)
      %Ecto.Changeset{data: %RideReservation{}}

  """
  def change_ride_reservation(%RideReservation{} = ride_reservation, attrs \\ %{}) do
    RideReservation.changeset(ride_reservation, attrs)
  end
end
