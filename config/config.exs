# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :zoom,
  ecto_repos: [Zoom.Repo]

# Configures the endpoint
config :zoom, ZoomWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "uqQ0lco/mLVNPnYiNRFe65yWry/TnpBg/PML9dl57iCFLv4ALFRLw50WC47yqq4w",
  render_errors: [view: ZoomWeb.ErrorView, accepts: ~w(html json)],
  pubsub_server: Zoom.PubSub

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id],
  level: :debug

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
