defmodule FreeKudos.AthleteController do
  use FreeKudos.Web, :controller
  alias FreeKudos.Athlete

  def new(conn, _params) do
    changeset = Athlete.changeset(%Athlete{})
    render conn, "new.html", changeset: changeset
  end

  # POST /
  def create(conn, %{"athlete" => athlete_params}) do
    changeset = Athlete.changeset(%Athlete{}, athlete_params)
    case Repo.insert(changeset) do
      {:ok, _} ->
        conn
        |> put_flash(:info, "Successfully added")
        |> redirect(to: athlete_path(conn, :success))
      {:error, changeset} ->
        render(conn, "new.html", changeset: changeset)
    end
  end

  def success(conn, _params) do
    render conn, "success.html"
  end
end
