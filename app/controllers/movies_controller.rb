class MoviesController < ApplicationController

  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def new
    @new_movie = Movie.new
  end

  def create
    movie = Movie.new(movie_params)

    if movie.save
      redirect_to "/actors/:id/movies"
    else
      redirect_to "/actors/:id/movies/new"
    end
  end

  private
  def movie_params
    params.require(:movie).permit(:name, :year, :academy_award)
  end
end
