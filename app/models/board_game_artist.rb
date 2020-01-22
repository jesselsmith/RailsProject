class BoardGameArtist < ApplicationRecord
  belongs_to :artist
  belongs_to :board_game

  validates :artist_id, uniqueness: { scope: :board_game_id }
  validates :board_game_id, uniqueness: { scope: :publisher_id }
end
