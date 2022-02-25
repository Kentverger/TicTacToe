class RemoveCoordinatesFieldsFromTurn < ActiveRecord::Migration[7.0]
  def change
    remove_column :turns, :coordinate_id, :string
  end
end
