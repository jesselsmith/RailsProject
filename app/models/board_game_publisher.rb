class BoardGamePublisher < ApplicationRecord
  belongs_to :publisher
  belongs_to :board_game

  validates :publisher_id, uniqueness: { scope: :board_game_id }
  validates :board_game_id, uniqueness: { scope: :publisher_id }
end
