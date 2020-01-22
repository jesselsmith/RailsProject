class User < ApplicationRecord
  has_many :reviews
  has_many :board_games, through: :reviews

  # Include default devise modules. Others available are:
  #  :timeoutable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable,
         :confirmable, :lockable, :trackable

  scope :sort_by_account_age, -> { order('created_at') }
  scope :sort_by_alphabet, -> { order('email') }
           
  include RatingAverageable

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.provider = auth.provider
      user.email = auth.info.email
      user.uid = auth.uid
      user.password = Devise.friendly_token[0,20]
    end
  end

  def highest_rated_review
    reviews.sort_by_rating.limit(1).first
  end

  def lowest_rated_review
    reviews.sort_by_lowest_rating.limit(1).first
  end
end
