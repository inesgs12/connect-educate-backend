class RemoveEnglishProfiencicyFromTasks < ActiveRecord::Migration[5.2]
  def change
    remove_column :tasks, :english_proficiency, :integer
  end
end
