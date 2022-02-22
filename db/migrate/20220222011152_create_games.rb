class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.references :first_player, null: false
      t.references :second_player, null: false
      t.references :winner_player, null: false

      t.timestamps
    end

    add_foreign_key :games, :players, column: :first_player_id
    add_foreign_key :games, :players, column: :second_player_id
    add_foreign_key :games, :players, column: :winner_player_id
  end
end
