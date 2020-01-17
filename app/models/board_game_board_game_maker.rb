class BoardGameBoardGameMaker < ApplicationRecord
  belongs_to :board_game
  belongs_to :creator, polymorphic: true
  # belongs_to :board_game_maker
  # belongs_to :publisher, foreign_key: :board_game_maker_id
  # # belongs_to :designer, foreign_key: :board_game_maker_id
  # # belongs_to :artist, foreign_key: :board_game_maker_id
end
