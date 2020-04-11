class CreatePostsLanguages < ActiveRecord::Migration[5.2]
  def change
    create_table :posts_languages do |t|
      t.references :post, foreign_key: true
      t.references :language, foreign_key: true

      t.timestamps
    end
  end
end
