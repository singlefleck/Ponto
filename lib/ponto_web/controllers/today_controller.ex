defmodule PontoWeb.TodayController do
  use PontoWeb, :controller

  alias Ponto.TodaySchema

  def index(conn, _params) do
    render(conn, "today.html")
  end

  def task_gen(conn, params) do
    TodaySchema.create_task(params)
    json(conn, params)
  end

  def delete_task_by_id(conn, params) do
    TodaySchema.delete_task(params)
    json(conn, params)
  end

  def all_tasks(conn, _params) do
    all = TodaySchema.list_tasks()
    # struct = Enum.reduce(all,[],fn x,acc ->  [Map.from_struct(x)]++acc end) 
    struct = Enum.map(all, &Map.drop(&1, [:__meta__, :__struct__]))
    # no_meta_data = Enum.reduce(struct,[],fn x,acc-> [Map.delete(x,:__meta__)] ++ acc end)

    json(conn, struct)
  end

  def fetch_by_id(conn, params) do
    if true do
      no_struct_data =
        params
        |> Map.get("id")
        |> TodaySchema.get_task_id()
        |> Map.drop([:__meta__, :__struct__])

      json(conn, no_struct_data)
    end
  end
end
