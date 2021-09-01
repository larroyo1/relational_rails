class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
    @new_song = Song.new
  end

  def create
    song = Song.new(song_params)

    if song.save
      redirect_to "/artists/:id/songs"
    else
      redirect_to '/artists/:id/songs/new'
    end
  end

  private
  def song_params
    params.require(:song).permit(:name, :top_100, :length)
  end
end
