defmodule FreeKudos.Athlete do
  use FreeKudos.Web, :model

  schema "athletes" do
    field :strava_id, :integer

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:strava_id])
    |> validate_required([:strava_id])
    |> unique_constraint(:strava_id)
  end
end
