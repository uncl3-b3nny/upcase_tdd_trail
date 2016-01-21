class TodosController < ApplicationController  
  before_filter :authenticate

  def index
    @todos = Todo.all
  end

  def new
    @todo = Todo.new
  end
  
  def create
    Todo.create(todo_params)
    redirect_to todos_path
  end

  private #purely out of curiousity, why doesn't private require an 'end'? If its not a block, why is it red? ...so really, what is 'private'? and why is it here?
    def todo_params
      params.require(:todo).permit(:title)
    end
end