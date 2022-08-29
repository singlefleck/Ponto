defmodule PontoWeb.PageController do
  use PontoWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
