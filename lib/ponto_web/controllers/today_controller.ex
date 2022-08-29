defmodule PontoWeb.TodayController do
  use PontoWeb, :controller

  def index(conn, _params) do
    render(conn, "today.html")
  end
end
