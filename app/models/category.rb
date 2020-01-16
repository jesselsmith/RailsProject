class Category < ApplicationRecord
  has_many :board_game_categories
  has_many :board_games, through: :board_game_categories
end
