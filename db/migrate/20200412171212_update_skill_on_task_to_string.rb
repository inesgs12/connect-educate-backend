class UpdateSkillOnTaskToString < ActiveRecord::Migration[5.2]
  def change
    rename_column :tasks, :skill_id, :skill
    change_column :tasks, :skill, :string
    remove_column :tasks, :index_tasks_on_skill
  end
end
