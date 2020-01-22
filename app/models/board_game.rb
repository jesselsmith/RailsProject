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

  validates :title, presence: true
  validates :min_players, presence: true,
                          numericality: { 
                            only_integer: true,
                            greater_than: 0
                          }
  validates :max_players, presence: true,
                          numericality: {
                            only_integer: true,
                            greater_than_or_equal_to: :min_players
                          }
  validates :min_playing_time, presence: true,
                               numericality: {
                                 only_integer: true,
                                 greater_than: 0
                               }
  validates :max_playing_time, presence: true,
                               numericality: {
                                 only_integer: true,
                                 greater_than_or_equal_to: :min_playing_time
                               }
  validates :age_range, presence: true, length: { minimum: 2 }
  
  scope :with_reviews, -> { joins(:reviews) }

  include RatingAverageable
end
