defmodule PhxblogWeb.RegistrationController do
  use PhxblogWeb, :controller
  alias Phxblog.Auth

  def new(conn, _params) do
    render conn, "new.html", changeset: conn
  end

  def create(conn,params) do
    
  end

end
