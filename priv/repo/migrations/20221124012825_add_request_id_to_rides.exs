defmodule Turbo.Repo.Migrations.AddRequestIdToRides do
  use Ecto.Migration

  def change do
    alter table(:rides) do
      add(:ride_request_id, references(:ride_requests, on_delete: :nilify_all, type: :binary_id))
    end
  end
end
