class ReviewsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_review, only: [:show, :edit, :update, :destroy]

  def index
    @nested_resource = get_nested_resource
    @reviews = @nested_resource.reviews
  end

  def show
  end

  def new
    @board_game = find(BoardGame)
    @review = Review.new
  end

  def create
    @board_game = find(BoardGame)
    @review = BoardGame.reviews.build(review_params)
    @review.user = current_user
    if @review.save
      redirect_to @review
    else
      render :new
    end
  end

  def edit
    @board_game 
  end

  def update
    @review.update(review_params)
    if @review.save
      redirect_to @review
    else
      redirect_to edit_review_path(@review)
    end
  end

  def destroy
    @review.destroy
    redirect_to root_path
  end

  private

  def set_review
    @review = find(Review)
  end

  def review_params
    params.require(:review).permit(:user_id, :board_game_id, :rating,
                                   :review_text)
  end

  def get_nested_resource
    if params[:board_game_id]
      find(BoardGame)
    elsif params[:user_id]
      find(User)
    elsif params[:designer_id]
      find(Designer)
    elsif params[:publisher_id]
      find(Publisher)
    elsif params[:artist_id]
      find(Artist)
    end
  end
end
