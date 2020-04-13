class AddVolunteerIdToSkills < ActiveRecord::Migration[5.2]
  def change
    add_reference :skills, :volunteer, foreign_key: true
  end
end
