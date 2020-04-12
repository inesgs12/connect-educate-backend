class AddParentToTasks < ActiveRecord::Migration[5.2]
  def change
    add_reference :tasks, :parent, foreign_key: true
  end
end
