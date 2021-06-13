# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :neighborhood_names,
  ecto_repos: [NeighborhoodNames.Repo]

# Configures the endpoint
config :neighborhood_names, NeighborhoodNamesWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "1v3m4eQkALHYiixNxiUs34LxSqrIfK4X/N/YW6mS8/SDHq3IxaSAvUzSUy4/asFd",
  render_errors: [view: NeighborhoodNamesWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: NeighborhoodNames.PubSub,
  live_view: [signing_salt: "oNUd/46T"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
