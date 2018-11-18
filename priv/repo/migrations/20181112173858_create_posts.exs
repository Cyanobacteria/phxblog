defmodule Phxblog.Repo.Migrations.CreatePosts do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :title, :string
      add :context, :string
      add :user_id, :integer
      add :memo, :string
      add :delete_time, :datetime

      timestamps()
    end

  end
end
