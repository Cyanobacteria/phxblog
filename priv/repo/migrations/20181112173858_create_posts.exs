defmodule Phxblog.Repo.Migrations.CreatePosts do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :title, :string
      add :context, :string
      add :user_id, :integer
      add :memo, :string
      add :is_available, :integer
      add :create_user, :string
      add :create_time, :naive_datetime
      add :update_user, :string
      add :update_time, :naive_datetime
      add :delete_user, :string
      add :delete_time, :naive_datetime

      timestamps()
    end

  end
end
