class BoardGameDesigner < ApplicationRecord
  belongs_to :designer
  belongs_to :board_game

  validates :designer_id, uniqueness: { scope: :board_game_id }
  validates :board_game_id, uniqueness: { scope: :designer_id }
end
