class ActorsController < ApplicationController

  def index
    @actors = Actor.all
    @movies = Movie.all
  end
end
