defmodule FreeKudos.Repo.Migrations.CreateAthlete do
  use Ecto.Migration

  def change do
    create table(:athletes) do
      add :strava_id, :integer

      timestamps()
    end

    create unique_index(:athletes, [:strava_id])
  end
end
