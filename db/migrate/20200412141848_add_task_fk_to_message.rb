class AddTaskFkToMessage < ActiveRecord::Migration[5.2]
  def change
    add_reference :messages, :task, foreign_key: true
  end
end
