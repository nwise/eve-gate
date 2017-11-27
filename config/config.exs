# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :eve_gate,
  ecto_repos: [EveGate.Repo]

# Configures the endpoint
config :eve_gate, EveGate.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "V0d8/5Xqgy5W+zCUED7j4+025MWzWY+xrb6FM6mSD1BPK7LSo3G1uGXq0KgJiqmn",
  render_errors: [view: EveGate.ErrorView, accepts: ~w(html json)],
  pubsub: [name: EveGate.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
