class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def new
    @new_artist = Artist.new
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])
    @artist.update(artist_params)
    redirect_to "/artists/#{@artist.id}"
  end

  def create
    artist = Artist.new(artist_params)

    if artist.save
      redirect_to artists_path
      else
      redirect_to artists_new_path
    end
  end

  private
  def artist_params
    params.require(:artist).permit(:name, :debut_year, :grammy_winner)
  end
end
