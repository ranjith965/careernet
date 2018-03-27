defmodule Careernet.Router do
  use Careernet.Web, :router

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

  scope "/", Careernet do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index

    resources "/registrations", RegistrationController, only: [:new, :create]

    get    "/login",  SessionController, :new
    post   "/login",  SessionController, :create
    delete "/logout", SessionController, :delete

    resources "/jobs", JobController
  end

  # Other scopes may use custom stacks.
  # scope "/api", Careernet do
  #   pipe_through :api
  # end
end
