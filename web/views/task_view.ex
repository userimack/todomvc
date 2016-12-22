defmodule Todomvc.TaskView do
  use Todomvc.Web, :view

  alias Todomvc.Task

  def update_link(conn, task = %Task{status: "active"}) do
    link("Mark Complete", to: task_path(conn, :update, task, %{task: %{status: "complete"}}), method: :put, class: "btn btn-primary btn-xs")
  end

  def update_link(conn, task = %Task{status: "complete"}) do
    link("Mark Active", to: task_path(conn, :update, task, %{task: %{status: "active"}}), method: :put, class: "btn btn-success btn-xs")
  end
end
