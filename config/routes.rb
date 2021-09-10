Rails.application.routes.draw do
  root to: 'welcomes#new'

  post "oauth/callback", to: "oauths#callback"
  get "oauth/callback", to: "oauths#callback"
  get "oauth/:provider", to: "oauths#oauth", as: :auth_at_provider

  resource :profile, only: %i[show edit update]
  resource :answers, only: %i[show create]
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
end
