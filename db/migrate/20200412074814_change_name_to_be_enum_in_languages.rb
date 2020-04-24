class ChangeNameToBeEnumInLanguages < ActiveRecord::Migration[5.2]
  def change
    change_column :languages, :name, 'integer USING CAST("name" AS integer)'
  end
end
