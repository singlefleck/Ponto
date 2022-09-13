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



def get_task_id(id) do
  Repo.get!(Task,id)
end
   


   def delete_task(id) do
    id_data = get_task_id(id)
    Repo.delete(id_data)
    IO.puts("'#id' deleted")
  end

end
