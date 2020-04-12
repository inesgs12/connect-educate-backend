class RenamePostsToTasks < ActiveRecord::Migration[5.2]
  def change
    rename_table :posts, :tasks
  end
end
