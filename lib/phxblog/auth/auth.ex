defmodule Phxblog.Auth do
  alias Phxblog.Repo
  alias Phxblog.Auth.User
  
  def sign_in(email, password) do
    user = Repo.get_by(User, email: email)
    hash=Comeonin.Bcrypt
    cond do
      user && hash.checkpw(password, user.encrypted_password) -> 
        {:ok, user}
      true ->
        {:error, :unauthorized}
    end
  end

  def current_user(conn) do
    user_id = Plug.Conn.get_session(conn, :current_user_id)
    if user_id, do: Repo.get(User, user_id)
  end

  def user_signed_in?(conn) do
    !!current_user(conn)
  end
  
  def sign_out(conn) do
    Plug.Conn.configure_session(conn, drop: true)
  end
  
  def register(params) do
     User.registration_changeset(%User{}, params) |> Repo.insert()    
  end

end
