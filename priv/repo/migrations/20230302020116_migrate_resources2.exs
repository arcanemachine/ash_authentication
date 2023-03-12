defmodule Example.Repo.Migrations.MigrateResources2 do
  @moduledoc """
  Updates resources based on their most recent snapshots.

  This file was autogenerated with `mix ash_postgres.generate_migrations`
  """

  use Ecto.Migration

  def up do
    alter table(:user) do
      add :extra_stuff, :text
      add :not_accepted_extra_stuff, :text
    end
  end

  def down do
    alter table(:user) do
      remove :not_accepted_extra_stuff
      remove :extra_stuff
    end
  end
end