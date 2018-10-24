defmodule PhxblogWeb.SessionController do
  use PhxblogWeb, :controller
  
  def new(conn, _params) do
    render conn, "new.html"
  end

end
