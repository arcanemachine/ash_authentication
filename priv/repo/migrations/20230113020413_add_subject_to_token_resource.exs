defmodule Example.Repo.Migrations.AddSubjectToTokenResource do
  @moduledoc """
  Updates resources based on their most recent snapshots.

  This file was autogenerated with `mix ash_postgres.generate_migrations`
  """

  use Ecto.Migration

  def up do
    alter table(:tokens) do
      add :subject, :text, null: false
    end
  end

  def down do
    alter table(:tokens) do
      remove :subject
    end
  end
end