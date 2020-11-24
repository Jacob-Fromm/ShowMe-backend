Rails.application.routes.draw do
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
namespace :api do
    namespace :v1 do
      resources :fans, only: [:create, :index]
      post '/fan/login', to: 'auth#create_fan'
      get '/fan/profile', to: 'fans#profile'

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

      resources :users
      post 'user_token' => 'user_token#create'
      post 'find_user' => 'users#find'
    end
  end
end
