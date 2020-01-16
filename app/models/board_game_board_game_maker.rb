class BoardGameBoardGameMaker < ApplicationRecord
  belongs_to :board_game
  belongs_to :board_game_maker
end
