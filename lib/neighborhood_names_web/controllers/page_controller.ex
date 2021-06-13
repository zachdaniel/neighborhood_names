defmodule NeighborhoodNamesWeb.PageController do
  use NeighborhoodNamesWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
