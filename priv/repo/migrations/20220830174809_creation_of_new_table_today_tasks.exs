defmodule Ponto.Repo.Migrations.CreationOfNewTableTodayTasks do
  use Ecto.Migration

  def change do
    create table(:task) do
      add :taskname, :string
      add :task, :string

      timestamps()
    end

  end
end
