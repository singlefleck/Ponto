defmodule Ponto.TodaySchema.Task do
  use Ecto.Schema
  import Ecto.Changeset

  schema "task" do
    field :task, :string
    field :taskname, :string

    timestamps()
  end

  def changeset(task, attrs \\ %{}) do
    task
    |> cast(attrs, [:task, :taskname])
  end
end
