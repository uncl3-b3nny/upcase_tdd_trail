class AddColumnEmailToTodo < ActiveRecord::Migration
  def change
    add_column :todos, :email, :string
  end
end
