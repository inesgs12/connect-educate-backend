class AddPreferredLanguageToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :preferred_language, :string
  end
end
