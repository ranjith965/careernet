defmodule Careernet.Repo.Migrations.CreateJob do
  use Ecto.Migration

  def change do
    create table(:jobs) do
      add :company, :string
      add :position, :string
      add :description, :text
      add :qualifications, :text

      timestamps()
    end
  end
end
