Rails.application.routes.draw do
  get 'sessions/new'
  root to: "welcomes#new"
  resources :users, only: %i[ new create edit update]
  
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
end
