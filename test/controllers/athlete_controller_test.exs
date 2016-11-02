defmodule FreeKudos.AthleteControllerTest do
  use FreeKudos.ConnCase

  test "GET /", %{conn: conn} do
    conn = get conn, "/"
    assert html_response(conn, 200) =~ "Strava Kudos"
  end
end
