class Review < ApplicationRecord
  belongs_to :user
  belongs_to :board_game

  validates :user_id, uniqueness: { scope: :board_game_id }
end
