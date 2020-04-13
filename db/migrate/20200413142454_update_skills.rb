class UpdateSkills < ActiveRecord::Migration[5.2]
  def change
    remove_column :skills, :user_id
    remove_column :skills, :index_skills_on_user_id
  end
end
