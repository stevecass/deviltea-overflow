Rails.application.routes.draw do
  resources :questions do
    resources :answers, only: [:create]
  end

  root to: 'questions#index'

  resources :votes, only: [:create]
  resources :comments
  resource :session, only: [:new, :create, :destroy]
  get '/logout', to: 'sessions#destroy'
  get '/login', to: 'sessions#new'

end

