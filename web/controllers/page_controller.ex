defmodule FreeKudos.PageController do
  use FreeKudos.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  # POST /
  def create(conn, %{"session" => %{"strava_id" => strava_id}}) do
    conn
    |> put_flash(:error, "Invalid Strava id")
    |> render("index.html")
  end
end
