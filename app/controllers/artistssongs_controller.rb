class ArtistsSongsController < ApplicationController
  def index
    @artists = Artist.find(params[:id])
  end
end
