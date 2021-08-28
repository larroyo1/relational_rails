Rails.application.routes.draw do
  #get 'artists_songs/index', to: 'artists_songs#index'
  root 'home#index'

  get '/artists/new', to: 'artists#new'
  post '/artists', to: 'artists#create'

  get '/artists', to: 'artists#index'
  get '/actors', to: 'actors#index'
  get '/movies', to: 'movies#index'
  get '/artists/:id', to: 'artists#show'
  get '/actors/:id', to: 'actors#show'
  get '/songs', to: 'songs#index'
  get '/movies/:id', to: 'movies#show'
  get '/songs/:id', to: 'songs#show'


  #get '/artists/new', to: 'artists#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
