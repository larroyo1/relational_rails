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

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    @movie.update(movie_params)
    redirect_to "/movies/#{@movie.id}"
  end

  def create
    actor = Actor.find(params[:id])
    movie = Movie.new(movie_params)
    actor.movie.create(movie_params)
    if movie.save
      redirect_to "/actors/:id/movies"
    else
      redirect_to "/actors/:id/movies/new"
    end
  end

  def destroy
    movie = Movie.find(params[:id])
    movie.destroy
    redirect_to "/movies"
  end

  private
  def movie_params
    params.require(:movie).permit(:name, :year, :academy_award)
  end
end
