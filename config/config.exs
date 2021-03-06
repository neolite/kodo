# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :kodo,
  ecto_repos: [Kodo.Repo]

# Configures the endpoint
config :kodo, KodoWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "MsKiaTQNQ9AJo8ai/Zs/8OU40VAlQsfWDfxGbFxCnxT4gTRxH40ZxtTJplnzP/im",
  render_errors: [view: KodoWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Kodo.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
