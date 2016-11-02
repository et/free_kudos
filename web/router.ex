defmodule FreeKudos.Router do
  use FreeKudos.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", FreeKudos do
    pipe_through :browser # Use the default browser stack

    get "/", AthleteController, :new
    post "/", AthleteController, :create
    get "/success", AthleteController, :success
  end

  # Other scopes may use custom stacks.
  # scope "/api", FreeKudos do
  #   pipe_through :api
  # end
end
