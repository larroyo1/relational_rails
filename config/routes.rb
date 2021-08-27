Rails.application.routes.draw do
  #get 'home/index'
  get 'home/artists_songs'
  root 'home#index'

  get '/actors', to: 'actors#index'
  get '/movies', to: 'movies#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
