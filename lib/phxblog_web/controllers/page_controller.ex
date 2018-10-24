defmodule PhxblogWeb.PageController do
  use PhxblogWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
