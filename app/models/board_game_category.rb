class BoardGameCategory < ApplicationRecord
  belongs_to :board_game
  belongs_to :category
end
