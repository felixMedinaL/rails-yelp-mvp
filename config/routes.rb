Rails.application.routes.draw do
  resources :restaurants do
    resources :reviews, only: [:index, :new, :create]
  end
  resources :reviews, only:[:destroy]
  #index
  #get '/restaurants', to: 'restaurants#index'
  #new
  #get '/restaurants/new', to: 'restaurants#new', as: :new_restaurant
  #create
  #post '/restaurants', to: 'restaurants#create', as: :create_restaurant
  #edit
  #get '/restaurants/:id/edit', to: 'restaurants#edit', as: :edit_restaurant
  #show
  #get '/restaurants/:id', to: 'restaurants#show', as: :restaurant
  #update
  #patch  '/restaurants/:id', to: 'restaurants#update'
  #delete
  #delete '/restaurants/:id', to: 'restaurants#destroy'
end
