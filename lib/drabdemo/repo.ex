defmodule Drabdemo.Repo do
  use Ecto.Repo,
    otp_app: :drabdemo,
    adapter: Ecto.Adapters.Postgres
end
