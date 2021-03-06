Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root to: 'welcomes#new'

  post "oauth/callback", to: "oauths#callback"
  get "oauth/callback", to: "oauths#callback"
  get "oauth/:provider", to: "oauths#oauth", as: :auth_at_provider

  resource :record, only: %i[show edit update]
  
  resource :questions, only: %i[show] do
    collection do
      post :answer
      get :answer
    end
  end
  
  resources :contacts, only: %i[new create] do
    collection do
      post :confirm
    end
  end
  
  delete '/logout', to: 'sessions#destroy'
  mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development?
  
  unless Rails.env.production?
    namespace :development do
      get '/login', to: 'test_sessions#new', as: :login
      post '/login', to: 'test_sessions#create'
    end
  end
end
      
