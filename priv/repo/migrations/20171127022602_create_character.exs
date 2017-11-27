defmodule EveGate.Repo.Migrations.CreateCharacter do
  use Ecto.Migration

  def change do
    create table(:characters) do
      add :esi_id, :integer
      add :name, :string

      timestamps()
    end

  end
end
