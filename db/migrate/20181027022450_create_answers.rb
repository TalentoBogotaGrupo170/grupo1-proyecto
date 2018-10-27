class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.references :complaint, foreign_key: true
      t.references :actor, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end
