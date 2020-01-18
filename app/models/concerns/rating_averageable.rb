module RatingAverageable
  extend ActiveSupport::Concern

  def average_rating
    reviews.sum(&:rating).fdiv(reviews.size)
  end
  class_methods do
    def sort_by_average_rating
      all.sort do |a, b|
        b.average_rating <=> a.average_rating
      end
    end

    def highest_rated
      sort_by_average_rating.first
    end

    def lowest_rated
      sort_by_average_rating.last
    end
  end
end
