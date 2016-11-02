# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :free_kudos,
  ecto_repos: [FreeKudos.Repo]

# Configures the endpoint
config :free_kudos, FreeKudos.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "0VC0VA8gr0lqycW3Cu8MQky6fxjJDu7i839ET5QZQJdKNj4U8odphInZfWbuhfB0",
  render_errors: [view: FreeKudos.ErrorView, accepts: ~w(html json)],
  pubsub: [name: FreeKudos.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
