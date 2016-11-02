defmodule FreeKudos.TestHelpers do
  alias FreeKudos.Repo

  def insert_athlete(attrs \\ %{}) do
    changes = Dict.merge(%{
      strava_id: 12345
    }, attrs)

    %FreeKudos.Athlete{}
    |> FreeKudos.Athlete.changeset(changes)
    |> Repo.insert!()
  end
end
