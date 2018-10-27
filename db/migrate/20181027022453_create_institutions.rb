class CreateInstitutions < ActiveRecord::Migration[5.2]
  def change
    create_table :institutions do |t|
      t.string :name
      t.string :addres
      t.string :mail
      t.references :actor, foreign_key: true

      t.timestamps
    end
  end
end
