defmodule NeighborhoodNames.Repo do
  use Ecto.Repo,
    otp_app: :neighborhood_names,
    adapter: Ecto.Adapters.Postgres
end
