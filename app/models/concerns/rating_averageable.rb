module RatingAverageable
  extend ActiveSupport::Concern

  def average_rating
    reviews.sum(&:rating).fdiv(reviews.size) if reviews.size > 0
  end

  def sort_board_games_by_average_rating
    self.class.avg_rating_sort(board_games)
  end

  def highest_rated_board_game
    sort_board_games_by_average_rating.first
  end

  def lowest_rated_board_game
    sort_board_games_by_average_rating.last
  end
  
  class_methods do
    def avg_rating_sort(collection)
      collection.sort do |a, b|
        (b.average_rating || -1) <=> (a.average_rating || -1)
      end
    end

    def sort_by_average_rating
      avg_rating_sort(all)
    end

    def highest_rated
      sort_by_average_rating.first
    end

    def lowest_rated
      sort_by_average_rating.last
    end
  end  
end
