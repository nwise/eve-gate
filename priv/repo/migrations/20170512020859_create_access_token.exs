defmodule EveGate.Repo.Migrations.CreateAccessToken do
  use Ecto.Migration

  def change do
    create table(:access_tokens) do
      add :access_token, :string
      add :token_type, :string
      add :expires_in, :integer
      add :refresh_token, :string

      timestamps()
    end

  end
end
