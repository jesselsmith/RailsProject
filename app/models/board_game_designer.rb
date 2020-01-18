class BoardGameDesigner < ApplicationRecord
  belongs_to :designer
  belongs_to :board_game
end
