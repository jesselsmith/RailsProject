class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
  end

  def show
  end

  def new
    @artist = artist.new
  end

  def create
    @artist = artist.new(artist_params)
    if @artist.save
      redirect_to @artist
    else
      render :new
    end
  end

  def edit
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
