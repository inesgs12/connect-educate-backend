class DropPostsSkillsTable < ActiveRecord::Migration[5.2]
  def up
    drop_table :posts_skills
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
