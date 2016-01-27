class CompletionsController < ApplicationController
  def create
    todo.complete! #touch sets a timestamp to the current time then persists the record. Plenty to refactor, but feature works, and the suite is green, so we're committing
    redirect_to todos_path
  end

  def destroy
    todo.mark_incomplete!
    redirect_to todos_path
  end

  private
  def todo
    current_user.todos.find(params[:todo_id])
  end
end