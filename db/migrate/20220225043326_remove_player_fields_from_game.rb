class RemovePlayerFieldsFromGame < ActiveRecord::Migration[7.0]
  def change
    remove_column :games, :first_player_id, :string
    remove_column :games, :second_player_id, :string
    remove_column :games, :winner_player_id, :string
  end
end
