class CreateActorAttainGoals < ActiveRecord::Migration[5.2]
  def change
    create_table :actor_attain_goals do |t|
      t.integer :validity
      t.references :goal, foreign_key: true
      t.references :actor, foreign_key: true
      t.references :actor_goal, foreign_key: true
      t.references :actor_type, foreign_key: true
      t.integer :attainment
      t.date :startdate
      t.date :enddate
      t.integer :score

      t.timestamps
    end
  end
end
