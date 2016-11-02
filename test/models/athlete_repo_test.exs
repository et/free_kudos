defmodule FreeKudos.AthleteRepoTest do
  use FreeKudos.ModelCase
  alias FreeKudos.Athlete

  test "converts unique_constraint on strava_id to error" do
    insert_athlete(strava_id: 12345)
    changeset = Athlete.changeset(%Athlete{}, %{strava_id: 12345})

    assert {:error, changeset} = Repo.insert(changeset)
    assert {:strava_id, {"has already been taken", []}} in changeset.errors
  end
end
