class Artist < BoardGameMaker
  has_many :board_game_board_game_makers, foreign_key: :board_game_maker_id
  has_many :board_games, through: :board_game_board_game_makers
  has_many :reviews, through: :board_games
end