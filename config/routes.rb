Rails.application.routes.draw do
  get 'artists_songs/index', to: 'artists_songs#index'
  root 'home#index'

  get '/actors', to: 'actors#index'
  get '/movies', to: 'movies#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
