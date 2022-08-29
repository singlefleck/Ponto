defmodule Ponto.Repo do
  use Ecto.Repo,
    otp_app: :ponto,
    adapter: Ecto.Adapters.Postgres
end
