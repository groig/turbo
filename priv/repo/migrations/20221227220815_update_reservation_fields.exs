defmodule Turbo.Repo.Migrations.UpdateReservationFields do
  use Ecto.Migration

  def change do
    alter table(:reservations) do
      add(:status, :string, default: "requested")
      add(:price, :decimal)
      add(:time, :integer)
      add(:start_time, :naive_datetime)
    end
  end
end
