Rails.application.routes.draw do
  root to: 'welcomes#new'

  resources :users, only: %i[new create edit update] do
    member do
      get :activate
    end
  end
  resource :profile, only: %i[show edit update]
  resource :answers, only: %i[show create]
  resource :questions, only: %i[show] do
    collection do
      post :answer
      get :answer
    end
  end

  resources :password_resets, only: %i[new create edit update]

  resources :contacts, only: %i[new create] do
    collection do
      post :confirm
    end
  end

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  Rails.application.routes.draw do
    mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development?
  end
end
