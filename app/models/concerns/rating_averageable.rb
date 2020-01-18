module Concerns::RatingAverageable
  def average_rating
    reviews.sum(&:rating).fdiv(reviews.size)
  end
end
