# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :starter,
  ecto_repos: [Starter.Repo]

# Configures the endpoint
config :starter, StarterWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "edXQRNEDVNDnHxfDVoSLDhYucb6SQ1xaGFy042qtrTO/Ej2Ka8RJXHVWe0P2bB+U",
  render_errors: [view: StarterWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Starter.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
