class AddHealthpromentityToActors < ActiveRecord::Migration[5.2]
  def change
    add_reference :actors, :healthpromentity, foreign_key: true
  end
end
