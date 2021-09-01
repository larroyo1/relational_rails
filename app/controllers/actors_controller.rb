class ActorsController < ApplicationController

  def index
    @actors = Actor.all
  end

  def show
    @actor = Actor.find(params[:id])
  end

  def new
    @new_actor = Actor.new
  end

  def edit
    @actor = Actor.find(params[:id])
  end

  def update
    @actor = Actor.find(params[:id])
    @actor.update(actor_params)
    redirect_to "/actors/#{@actor.id}"
  end

  def create
    actor = Actor.new(actor_params)

    if actor.save
      redirect_to actors_path
    else
      redirect_to actors_new_path
    end
  end

  private
  def actor_params
    params.require(:actor).permit(:name, :year_first_film, :academy_award)
  end
end
