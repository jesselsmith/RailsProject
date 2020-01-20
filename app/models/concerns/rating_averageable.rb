module RatingAverageable
  extend ActiveSupport::Concern

  def average_rating
    reviews.sum(&:rating).fdiv(reviews.size)
  end

  def sort_board_games_by_average_rating
    avg_rating_sort(board_games)
  end

  def highest_rated_board_game
    sort_board_games_by_average_rating.first
  end

  def lowest_rated_board_game
    sort_board_games_by_average_rating.last
  end
  
  class_methods do
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

  private

  def avg_rating_sort(collection)
    collection.sort do |a, b|
      b.average_rating <=> a.average_rating
    end
  end
end
