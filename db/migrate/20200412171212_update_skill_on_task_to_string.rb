class UpdateSkillOnTaskToString < ActiveRecord::Migration[5.2]
  def change
    remove_column :tasks, :skill_id, :skill
    add_column :tasks, :skill, :string
  end
end
