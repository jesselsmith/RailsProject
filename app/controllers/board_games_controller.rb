class BoardGamesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_board_game, only: [:show, :edit, :update, :destroy]

  def index
    @board_games = BoardGame.all
  end

  def show
  end

  def new
    @board_game = BoardGame.new
  end

  def create
    @board_game = BoardGame.new(board_game_params)
    if @board_game.save
      redirect_to @board_game
    else
      render :new
    end
  end

  def edit
  end

  def update
    @board_game.update(board_game_params)
    if @board_game.save
      redirect_to @board_game
    else
      render :edit
    end
  end

  def destroy
    @board_game.destroy
    redirect_to root_path
  end

  private

  def board_game_params
    params.require(:board_game).permit(:title, :min_players, :max_players,
                                       :min_playing_time, :max_playing_time,
                                       :age_range, :amazon_url)
  end
end
