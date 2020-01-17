class ReviewsController < ApplicationController
  before_action :authenticate_user!

  def index
    @nested_resource = get_nested_resource
    @reviews = @nested_resource.reviews
  end

  def show
    @review = find(Review)
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    if @review.save
      redirect_to @review
    else
      redirect_to new_review_path
    end
  end

  def edit
    @review = find(Review)
  end

  def update
    @review = find(Review)
    @review.update(review_params)
    if @review.save
      redirect_to @review
    else
      redirect_to edit_review_path(@review)
    end
  end

  def destroy
    @review = find(Review)
    @review.destroy
    redirect_to root_path
  end

  private

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
