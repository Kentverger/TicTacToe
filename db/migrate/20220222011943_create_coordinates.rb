class CreateCoordinates < ActiveRecord::Migration[7.0]
  def change
    create_table :coordinates do |t|
      t.integer :x
      t.integer :y
      t.string :badge
      t.references :game, null: false, foreign_key: true

      t.timestamps
    end
  end
end
