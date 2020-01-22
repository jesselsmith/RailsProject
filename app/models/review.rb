class Review < ApplicationRecord
  belongs_to :user
  belongs_to :board_game

  validates :rating, presence: true,
                     numericality: { only_integer: true,
                                     greater_than_or_equal_to: 0,
                                     less_than_or_equal_to: 10 }

  scope :sort_by_rating, -> { order(rating: :desc) }
  scope :sort_by_lowest_rating, -> { order(:rating) }
  scope :with_review_text, -> { where.not(review_text: [nil, '']) }

  validates :user_id, uniqueness: { scope: :board_game_id }
end
