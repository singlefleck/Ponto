defmodule PontoWeb.TodayController do
  use PontoWeb, :controller

  alias Ponto.Today
  alias Ponto.TodaySchema

  def index(conn, _params) do
    render(conn, "today.html")
  end

  def task_gen(conn, _params) do
    task = list_tasks()
    render(conn, "task_gen.json", taskname: taskname)
  end
end
