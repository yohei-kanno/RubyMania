Rails.application.routes.draw do
  
  root to: "welcomes#new"
  
  resources :users, only: %i[ new create edit update]
  resource :profile, only: %i[ show edit update]
  resource :answers, only: %i[ show create]
  resource :questions, only: %i[ show ] do 
    collection do
      post :answer
      get :answer
    end
  end
  
  
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  
  
end
