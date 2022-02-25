class AddCoordinatesFieldsToTurn < ActiveRecord::Migration[7.0]
  def change
    change_table :turns do |t|
      t.integer :x
      t.integer :y
      t.string :badge
    end
  end
end
