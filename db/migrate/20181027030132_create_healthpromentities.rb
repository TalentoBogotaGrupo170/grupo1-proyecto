class CreateHealthpromentities < ActiveRecord::Migration[5.2]
  def change
    create_table :healthpromentities do |t|
      t.string :name
      t.string :mail
      t.string :link

      t.timestamps
    end
  end
end
