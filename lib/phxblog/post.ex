defmodule Phxblog.Post do
  use Ecto.Schema
  import Ecto.Changeset


  schema "posts" do
    field :context, :string
    field :create_time, :naive_datetime
    field :create_user, :string
    field :delete_time, :naive_datetime
    field :delete_user, :string
    field :is_available, :integer
    field :memo, :string
    field :title, :string
    field :update_time, :naive_datetime
    field :update_user, :string
    field :user_id, :integer

    timestamps()
  end

  @doc false
  def changeset(post, attrs) do
    post
    |> cast(attrs, [:title, :context, :user_id, :memo, :is_available, :create_user, :create_time, :update_user, :update_time, :delete_user, :delete_time])
    |> validate_required([:title, :context, :user_id, :memo, :is_available, :create_user, :create_time, :update_user, :update_time, :delete_user, :delete_time])
  end
end
