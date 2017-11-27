defmodule EveGate.CharacterTest do
  use EveGate.ModelCase

  alias EveGate.Character

  @valid_attrs %{}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Character.changeset(%Character{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Character.changeset(%Character{}, @invalid_attrs)
    refute changeset.valid?
  end
end
