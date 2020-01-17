class BoardGameMaker < ApplicationRecord
  has_many :board_game_board_game_makers
  has_many :board_games, through: :board_game_board_game_makers
end
