class BoardGameCategory < ApplicationRecord
  belongs_to :board_game
  belongs_to :category

  validates :category_id, uniqueness: { scope: :board_game_id }
  validates :board_game_id, uniqueness: { scope: :category_id }
end
