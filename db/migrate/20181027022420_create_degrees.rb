class CreateDegrees < ActiveRecord::Migration[5.2]
  def change
    create_table :degrees do |t|
      t.references :actor_type, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
