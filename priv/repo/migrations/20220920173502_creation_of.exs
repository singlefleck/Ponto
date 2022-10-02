defmodule Ponto.Repo.Migrations.CreationOf do
  use Ecto.Migration

  def change do
    drop table(:task) 
    create table(:task, primary_key: false) do

      add :taskname, :string
      add :task, :string
      add :task_id, :uuid, primary_key: true

      timestamps()
    end


  end
end
