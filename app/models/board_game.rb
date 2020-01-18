class BoardGame < ApplicationRecord
  has_many :reviews
  has_many :users, through: :reviews
  has_many :board_game_categories
  has_many :categories, through: :board_game_categories
  has_many :board_game_artists
  has_many :artists, through: :board_game_artists
  has_many :board_game_designers
  has_many :designers, through: :board_game_designers
  has_many :board_game_publishers
  has_many :publishers, through: :board_game_publishers

  include RatingAverageable
end
