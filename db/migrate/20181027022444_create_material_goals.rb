class CreateMaterialGoals < ActiveRecord::Migration[5.2]
  def change
    create_table :material_goals do |t|
      t.references :goal, foreign_key: true
      t.references :material_type, foreign_key: true
      t.string :location

      t.timestamps
    end
  end
end
