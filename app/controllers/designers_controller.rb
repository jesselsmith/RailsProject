class DesignersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_designer, only: [:show, :create, :update, :destroy]
  def index
    @designers = Designer.all
  end

  def show
    @board_game_maker = find(Designer)
    render 'board_game_makers/show'
  end

  def new
    @board_game_maker = Designer.new
  end

  def create
    @designer = Designer.new(designer_params)
    if @designer.save
      redirect_to @designer
    else
      render :new
    end
  end

  def edit
    @board_game_maker = find(Designer)
  end

  def update
    @designer.update(designer_params)
    if @designer.save
      redirect_to @designer
    else
      render :edit
    end
  end

  def destroy
    @designer.destroy
    redirect_to designers_path
  end

  private

  def set_designer
    @designer = find(Designer)
  end

  def designer_params
    params.require(:designer).permit(:name)
  end
end
