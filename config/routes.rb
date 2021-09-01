Rails.application.routes.draw do
  #get 'artists_songs/index', to: 'artists_songs#index'
  root 'home#index'

  get '/artists/new', to: 'artists#new'
  post '/artists', to: 'artists#create'
  get '/artists', to: 'artists#index'
  get '/artists/:id', to: 'artists#show'
  #techincal debt
    # undefined method aritst_path
    # using resources creates aritsts_path
  resources :artists
  get '/artists/:id/songs', to: 'artistsongs#index'

  get '/actors/new', to: 'actors#new'
  post '/actors', to: 'actors#create'
  get '/actors', to: 'actors#index'
  get '/actors/:id', to: 'actors#show'
  #same issue as artists/ temporary fix until refactor
  resources :actors

  get '/actors/:id/movies/new', to: 'movies#new'
  post '/movies', to: 'movies#create'
  get '/movies', to: 'movies#index'
  get '/movies/:id', to: 'movies#show'
  get 'actors/:id/movies', to: 'actormovies#index'

  get '/artists/:id/songs/new', to: 'songs#new'
  post '/songs', to: 'songs#create'
  get '/songs', to: 'songs#index'
  get '/songs/:id', to: 'songs#show'


  #get '/artists/new', to: 'artists#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
