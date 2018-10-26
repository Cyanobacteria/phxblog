defmodule PhxblogWeb.Router do
  use PhxblogWeb, :router

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

  scope "/", PhxblogWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    resources "/sessions", SessionController, only: [:new, :create]
    delete "/sign out", SessionController, :delete
  end

  # Other scopes may use custom stacks.
  # scope "/api", PhxblogWeb do
  #   pipe_through :api
  # end
end
