class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
    @artist = Artist.find(params[:id])
    @new_song = @artist.song.new
  end

  def create
    @artist = Artist.find(params[:id])
    @new_song = @aritst.song.new(song_params)

    if @new_song.save
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
