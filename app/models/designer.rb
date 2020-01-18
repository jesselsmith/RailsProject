class Designer < BoardGameMaker
  has_many :board_game_designers
  has_many :board_games, through: :board_game_designers
  has_many :reviews, through: :board_games
end