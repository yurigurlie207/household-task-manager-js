class AddTaskToSubtask < ActiveRecord::Migration[6.0]
  def change
    add_reference :subtasks, :task, index: true, foreign_key: true
  end
end
