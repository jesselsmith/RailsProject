class BoardGame < ApplicationRecord
  has_many :reviews
  has_many :users, through: :reviews
  has_many :board_game_categories
  has_many :categories, through: :board_game_categories
  has_many :board_game_board_game_makers
  has_many :artists, through: :board_game_board_game_makers, foreign_key: :board_game_board_game_maker_id
  has_many :designers, through: :board_game_board_game_makers, foreign_key: :board_game_board_game_maker_id
  has_many :publishers, through: :board_game_board_game_makers, foreign_key: :board_game_board_game_maker_id
end
