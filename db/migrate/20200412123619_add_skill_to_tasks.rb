class AddSkillToTasks < ActiveRecord::Migration[5.2]
  def change
    add_reference :tasks, :skill, foreign_key: true
  end
end
