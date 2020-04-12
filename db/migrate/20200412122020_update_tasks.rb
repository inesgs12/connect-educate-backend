class UpdateTasks < ActiveRecord::Migration[5.2]
  def change
    remove_index :tasks, name: "index_tasks_on_user_id"
    remove_column :tasks, :title
    rename_column :tasks, :post_language, :task_language
  end
end
