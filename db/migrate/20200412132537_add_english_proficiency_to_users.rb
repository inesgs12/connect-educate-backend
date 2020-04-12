class AddEnglishProficiencyToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :english_proficiency, :integer
  end
end
