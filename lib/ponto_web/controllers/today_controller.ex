defmodule PontoWeb.TodayController do
  use PontoWeb, :controller

  alias Ponto.Today
  alias Ponto.TodaySchema

  def index(conn, _params) do
    render(conn, "today.html")
  end
end
