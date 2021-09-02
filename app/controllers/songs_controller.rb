class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
    @artist = Artist.find(params[:id])
    @new_song = @artist.songs.new
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
    @song.update(song_params)
    redirect_to "/songs/#{@song.id}"
  end

  def create
    @artist = Artist.find(params[:id])
    @new_song = @artist.songs.new(song_params)

    if @new_song.save
      redirect_to "/artists/:id/songs"
    else
      redirect_to '/artists/:id/songs/new'
    end
  end

  def destroy
    song = Song.find(params[:id])
    song.destroy
    redirect_to "/songs"
  end

  private
  def song_params
    params.require(:song).permit(:name, :top_100, :length)
  end
end
