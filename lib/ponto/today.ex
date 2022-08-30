defmodule Ponto.TodaySchema do
  import Ecto.Query, warn: false

  alias Ponto.Repo

  alias Ponto.TodaySchema.Task

  def list_tasks do
    Repo.all(Task)
  end

  def create_task(attrs \\ %{}) do
    %Task{}
    |> Task.changeset(attrs)
    |> Repo.insert()
  end

  def delete_task(%task{} = task) do
    Repo.delete(task)
  end
end
