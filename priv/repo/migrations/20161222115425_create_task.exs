defmodule Todomvc.Repo.Migrations.CreateTask do
  use Ecto.Migration

  def change do
    create table(:tasks) do
      add :description, :string
      add :status, :string, default: "active"

      timestamps()
    end

  end
end
