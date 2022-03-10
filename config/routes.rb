Rails.application.routes.draw do
  
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get 'home/index'
  
  # devise_for :users
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  get '/logout', :to => 'sessions#destroy'
  get '/login', :to => 'sessions#new', :as => :login
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
