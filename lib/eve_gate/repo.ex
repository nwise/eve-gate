defmodule EveGate.Repo do
  use Ecto.Repo,
    otp_app: :eve_gate,
    adapter: Ecto.Adapters.Postgres
end
