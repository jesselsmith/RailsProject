class BoardGameArtist < ApplicationRecord
  belongs_to :artist
  belongs_to :board_game
end
