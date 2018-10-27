class CreateActors < ActiveRecord::Migration[5.2]
  def change
    create_table :actors do |t|
      t.decimal :ident
      t.references :ident_type, foreign_key: true
      t.references :actor_type, foreign_key: true
      t.string :surname
      t.string :secsurname
      t.string :firstname
      t.string :secondname
      t.date :birthdate
      t.references :degree, foreign_key: true

      t.timestamps
    end
  end
end
