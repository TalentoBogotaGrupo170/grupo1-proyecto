class CreateGoals < ActiveRecord::Migration[5.2]
  def change
    create_table :goals do |t|
      t.references :degree, foreign_key: true
      t.integer :validity
      t.references :actor_type, foreign_key: true
      t.date :startdate
      t.date :enddate
      t.string :name
      t.decimal :weight
      t.decimal :fulfillment

      t.timestamps
    end
  end
end
