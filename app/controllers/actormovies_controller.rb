class ActormoviesController < ApplicationController
  def index
    @actors = Actor.find(params[:id])
  end
end
