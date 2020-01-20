class PublishersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_publisher, only: [:show, :create, :update, :destroy]
  def index
    @publishers = Publisher.all
  end

  def show
    @board_game_maker=find(Publisher)
    render 'board_game_makers/show'
  end

  def new
    @board_game_maker = Publisher.new
  end

  def create
    @publisher = Publisher.new(publisher_params)
    if @publisher.save
      redirect_to @publisher
    else
      render :new
    end
  end

  def edit
    @board_game_maker = find(Publisher)
  end

  def update
    @publisher.update(publisher_params)
    if @publisher.save
      redirect_to @publisher
    else
      render :edit
    end
  end

  def destroy
    @publisher.destroy
    redirect_to publishers_path
  end

  private

  def set_publisher
    @publisher = find(Publisher)
  end

  def publisher_params
    params.require(:publisher).permit(:name)
  end
end
