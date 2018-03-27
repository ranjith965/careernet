defmodule Careernet.Job do
  use Careernet.Web, :model

  schema "jobs" do
    field :company, :string
    field :position, :string
    field :description, :string
    field :qualifications, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:company, :position, :description, :qualifications])
    |> validate_required([:company, :position, :description, :qualifications])
  end
end
