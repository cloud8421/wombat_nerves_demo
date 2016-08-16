# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :restfully, Restfully.Endpoint,
  http: [port: 4000],
  url: [host: "localhost"],
  root: Path.dirname(__DIR__),
  check_origin: false,
  server: true,
  watchers: [],
  secret_key_base: "Ef1FV0CUJRU21Rxb1s58GG7ox2Uk7ny/3iMfPiW8Yuwda3n+MyD/oJ0ch5YtZ33I",
  render_errors: [accepts: ~w(html json)],
  pubsub: [name: Restfully.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :logger, :console, format: "[$level] $message\n"
config :logger, :level, :info

# Configure phoenix generators
config :phoenix, :generators,
  migration: true,
  binary_id: false

config :restfully, Restfully.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "",
  database: "restfully_dev",
  hostname: "192.168.1.200",
  pool_size: 10

# Import target specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
# Uncomment to use target specific configurations

# import_config "#{Mix.Project.config[:target]}.exs"
