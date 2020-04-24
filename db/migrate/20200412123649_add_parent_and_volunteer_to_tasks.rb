class AddParentAndVolunteerToTasks < ActiveRecord::Migration[5.2]
  def change
    add_reference :tasks, :parent, foreign_key: { to_table: 'users' }
    add_reference :tasks, :volunteer, foreign_key: { to_table: 'users' }
  end
end
