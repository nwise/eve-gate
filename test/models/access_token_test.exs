defmodule EveGate.AccessTokenTest do
  use EveGate.ModelCase

  alias EveGate.AccessToken

  @valid_attrs %{access_token: "some content", expires_in: 42, refresh_token: "some content", token_type: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = AccessToken.changeset(%AccessToken{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = AccessToken.changeset(%AccessToken{}, @invalid_attrs)
    refute changeset.valid?
  end
end
