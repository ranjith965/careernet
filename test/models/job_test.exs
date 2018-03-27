defmodule Careernet.JobTest do
  use Careernet.ModelCase

  alias Careernet.Job

  @valid_attrs %{company: "some company", description: "some description", position: "some position", qualifications: "some qualifications"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Job.changeset(%Job{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Job.changeset(%Job{}, @invalid_attrs)
    refute changeset.valid?
  end
end
