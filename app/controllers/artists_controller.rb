class ArtistsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_artist, only: [:show, :create, :update, :destroy]
  def index
    @artists = Artist.all
  end

  def show
  end

  def new
    @board_game_maker = Artist.new
  end

  def create
    @artist = Artist.new(artist_params)
    if @artist.save
      redirect_to @artist
    else
      render :new
    end
  end

  def edit
    @board_game_maker = set_artist
  end

  def update
    @artist.update(artist_params)
    if @artist.save
      redirect_to @artist
    else
      render :edit
    end
  end

  def destroy
    @artist.destroy
    redirect_to artists_path
  end

  private

  def set_artist
    @artist = find(Artist)
  end

  def artist_params
    params.require(:artist).permit(:name)
  end
end
