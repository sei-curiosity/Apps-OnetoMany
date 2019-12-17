Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
get '/artists', to: 'artists#index', as: 'artisthome'
get '/artists/new', to:'artists#new', as: 'new_artist'
post '/artists/new', to: 'artists#create'
get '/artists/:artist_id/songs/new', to: 'songs#new', as: 'new_song'
post '/artists/:artist_id/songs/new', to: 'songs#create'
get '/artists/:id', to: 'artists#show', as: 'artist'
get '/artists/:id/edit', to: 'artists#edit', as: 'edit_artist'
patch '/artists/:id', to: 'artists#update'
delete '/artists/:artist_id/songs/:song_id', to:'songs#destroy', as: 'deletesong'
delete '/artists/:id', to: 'artists#destroy'
end