class Turn < ApplicationRecord
  belongs_to :coordinate
  belongs_to :player
  belongs_to :game
end
