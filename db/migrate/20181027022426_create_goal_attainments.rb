class CreateGoalAttainments < ActiveRecord::Migration[5.2]
  def change
    create_table :goal_attainments do |t|
      t.references :degree, foreign_key: true
      t.integer :validity
      t.references :goal, foreign_key: true
      t.references :actor_type, foreign_key: true
      t.integer :attainment
      t.date :startdate
      t.date :enddate
      t.string :name
      t.decimal :weight
      t.decimal :fulfillment

      t.timestamps
    end
  end
end
