class CreateActorRelationships < ActiveRecord::Migration[5.2]
  def change
    create_table :actor_relationships do |t|
      t.references :actor, foreign_key: true
      t.integer :actor2

      t.timestamps
    end
  end
end
