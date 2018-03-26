# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :careernet,
  ecto_repos: [Careernet.Repo]

# Configures the endpoint
config :careernet, Careernet.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "lS2BqzUyisEmApiQHCqMfLQUBKrc6uXr/LAd/62Pt7WIIEG3fzejWq+uc6aLwgWT",
  render_errors: [view: Careernet.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Careernet.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
