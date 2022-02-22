class Game < ApplicationRecord
  belongs_to :first_player, class_name: 'Player', foreign_key: 'first_player_id'
  belongs_to :second_player, class_name: 'Player', foreign_key: 'second_player_id'
  belongs_to :winner_player, class_name: 'Player', foreign_key: 'winner_player_id'
end
