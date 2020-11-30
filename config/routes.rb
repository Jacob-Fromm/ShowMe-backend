Rails.application.routes.draw do
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
namespace :api do
    namespace :v1 do
      resources :fans
      # post '/fan/login', to: 'auth#create_fan'
      # get '/fan/profile', to: 'fans#profile'

      resources :producers
      resources :comedians
      # resources :comedians, only: [:create, :index]
      # post '/comedian/login', to: 'auth#create_comedian'
      # get '/comedian/profile', to: 'comedians#profile'
      
      resources :comedian_genres
      resources :genres
      resources :show_fans
      resources :comedian_fans
      resources :events
      resources :lineups
      resources :shows

      resources :users, only: [:create, :index]
        post '/login', to: 'auth#create'
        get '/profile', to: 'users#profile'
      
      # resources :users
      #   post 'user_token,' to: 'user_token#create'
      #   post 'find_user,' to: 'users#find'  
      # # post "/login", to: "auth#login"
      # # get "/auto_login", to: "auth#auto_login"
      # # get "/user_is_authed", to: "auth#user_is_authed"

    end
  end
end
