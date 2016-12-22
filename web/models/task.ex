defmodule Todomvc.Task do
  use Todomvc.Web, :model

  schema "tasks" do
    field :description, :string
    field :status, :string, default: "active"

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:description, :status])
    |> validate_required([:description, :status])
  end

  def active(query \\ __MODULE__), do: from e in query, where: e.status == "active"
  def complete(query \\ __MODULE__), do: from e in query, where: e.status == "complete"
end
