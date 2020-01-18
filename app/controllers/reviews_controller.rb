class ReviewsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_review, only: [:show, :edit, :update, :destroy]
  before_action :set_board_game, only: [:new, :create, :edit, :destroy]

  def index
    @nested_resource = get_nested_resource
    @reviews = @nested_resource.reviews
  end

  def show
  end

  def new
    @review = Review.new
  end

  def create
    @review = BoardGame.reviews.build(review_params)
    @review.user = current_user
    if @review.save
      redirect_to @review
    else
      render :new
    end
  end

  def edit
  end

  def update
    @review.update(review_params)
    if @review.save
      redirect_to @review
    else
      render :edit
    end
  end

  def destroy
    @review.destroy
    redirect_to @board_game
  end

  private

  def set_review
    @review = find(Review)
  end

  def review_params
    params.require(:review).permit(:user_id, :board_game_id, :rating,
                                   :review_text)
  end
end
