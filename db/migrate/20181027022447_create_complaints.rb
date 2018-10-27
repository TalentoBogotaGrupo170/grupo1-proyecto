class CreateComplaints < ActiveRecord::Migration[5.2]
  def change
    create_table :complaints do |t|
      t.references :actor, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end
