# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :todomvc,
  ecto_repos: [Todomvc.Repo]

# Configures the endpoint
config :todomvc, Todomvc.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "HVcenkveyNftFf/Rjc7YeNaawpLbonszSFoq0kQgzYBd2h+EXzLK2xHRky6jCKb2",
  render_errors: [view: Todomvc.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Todomvc.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
