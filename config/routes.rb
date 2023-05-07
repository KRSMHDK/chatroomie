Rails.application.routes.draw do
  delete '/signout', to: 'sessions#destroy', as: 'signout'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :users, only: [:create]
  resources :messages, only: [:create]
  resources :chatroom, only: [:show]
  resources :sessions, only: [:new, :create]
  root "users#index"
  # Defines the root path route ("/")
end
