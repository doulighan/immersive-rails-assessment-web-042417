Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'guests#index'
  resources :guests, only: [:index, :show]
  resources :episodes, only: [:index, :show]
  resources :users, except: [:destroy]
  resources :episode_guests, only: [:new, :create]

  post '/signin', to: 'sessions#create'
  delete '/signout', to: 'sessions#destroy'

 

end
