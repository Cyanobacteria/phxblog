defmodule Phxblog.Post do
  use Ecto.Schema
  import Ecto.Changeset


  schema "posts" do
    field :context, :string
    field :delete_time, :integer
    field :memo, :string
    field :title, :string
    field :user_id, :integer

    timestamps()
  end

  @doc false
  def changeset(post, attrs) do
    post
    |> cast(attrs, [:title, :context, :user_id, :memo, :delete_time])
    |> validate_required([:title, :context, :user_id, :memo, :delete_time])
  end
end
