class DropPostsLanguagesTable < ActiveRecord::Migration[5.2]
  def up
    drop_table :posts_languages
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
