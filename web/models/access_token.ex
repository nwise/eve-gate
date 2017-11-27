defmodule EveGate.AccessToken do
  use EveGate.Web, :model

  schema "access_tokens" do
    field :access_token, :string
    field :token_type, :string
    field :expires_in, :integer
    field :refresh_token, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:access_token, :token_type, :expires_in, :refresh_token])
    |> validate_required([:access_token, :token_type, :expires_in, :refresh_token])
  end
end
