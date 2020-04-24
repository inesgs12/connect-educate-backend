class CreateLanguages < ActiveRecord::Migration[5.2]
  def change
    create_table :languages do |t|
      t.string :name
      t.string :level
      t.references :volunteer, foreign_key: { to_table: 'users' }

      t.timestamps
    end
  end
end
