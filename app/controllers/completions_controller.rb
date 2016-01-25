class CompletionsController < ApplicationController
  def create
    current_user.todos.find(params[:todo_id]).touch :completed_at #touch sets a timestamp to the current time then persists the record. Plenty to refactor, but feature works, and the suite is green, so we're committing
    redirect_to todos_path
  end
end