# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :drabdemo,
  ecto_repos: [Drabdemo.Repo]

# Configures the endpoint
config :drabdemo, DrabdemoWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "AkLH0WjE2MdoW/elSVGGdEctDNtGFG+/NT2zYXqpSw3AHNfLnUg0jsBG603Twm+K",
  render_errors: [view: DrabdemoWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Drabdemo.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Drab
config :drab, DrabdemoWeb.Endpoint,
  otp_app: :drabdemo

# Configures default Drab file extension
config :phoenix, :template_engines,
  drab: Drab.Live.Engine

# Configures Drab for webpack
config :drab, DrabdemoWeb.Endpoint,
  js_socket_constructor: "window.__socket"

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
