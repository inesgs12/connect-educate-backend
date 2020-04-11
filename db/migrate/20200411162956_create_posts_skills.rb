class CreatePostsSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :posts_skills do |t|
      t.references :post, foreign_key: true
      t.references :skill, foreign_key: true

      t.timestamps
    end
  end
end
