class UpdateUserToAddParentsAndVolunteerTypes < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :type, :string
    add_column :users, :bio, :text
    add_column :users, :birth_date, :date
  end
end
