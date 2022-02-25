class RemovePlayerFieldsFromTurn < ActiveRecord::Migration[7.0]
  def change
    remove_column :turns, :player_id, :string
  end
end
