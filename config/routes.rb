Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :users, only: [:create]
  resources :messages, only: [:create]
  resources :chatroom, only: [:show]
  resources :sessions, only: [:new, :create, :destroy]

  root "users#index"
  # Defines the root path route ("/")
end
