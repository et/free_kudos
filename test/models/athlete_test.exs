defmodule FreeKudos.AthleteTest do
  use FreeKudos.ModelCase

  alias FreeKudos.Athlete

  @valid_attrs %{strava_id: 42}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Athlete.changeset(%Athlete{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Athlete.changeset(%Athlete{}, @invalid_attrs)
    refute changeset.valid?
  end
end
