class Review < ApplicationRecord
  belongs_to :user
  belongs_to :board_game

  scope :sort_by_rating, -> { order(rating: :desc) }
  scope :sort_by_lowest_rating, -> { order(:rating) }
  scope :with_review_text, -> { where.not(review_text: [nil, '']) }

  validates :user_id, uniqueness: { scope: :board_game_id }
end
