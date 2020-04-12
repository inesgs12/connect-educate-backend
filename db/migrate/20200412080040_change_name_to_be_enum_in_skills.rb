class ChangeNameToBeEnumInSkills < ActiveRecord::Migration[5.2]
  def change
    change_column :skills, :name, :integer
  end
end
