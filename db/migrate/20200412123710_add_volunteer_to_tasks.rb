class AddVolunteerToTasks < ActiveRecord::Migration[5.2]
  def change
    add_reference :tasks, :volunteer, foreign_key: true
  end
end
