class AddInfoToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :english_proficiency, :integer
    add_column :posts, :post_language, :string
    add_column :posts, :childs_age, :integer
  end
end
