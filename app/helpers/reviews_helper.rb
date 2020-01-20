module ReviewsHelper
  def review_subject(review)
    if @nested_resource.is_a? BoardGame
      link_to review.user.email, user_path(review.user)
    elsif @nested_resource.is_a? BoardGameMaker
      link_to(review.board_game.title, board_game_path(review.board_game)) +
        ' review by ' + link_to(review.user.email, user_path(review.user))
    else
      link_to review.board_game.title, board_game_path(review.board_game)
    end
  end
end
