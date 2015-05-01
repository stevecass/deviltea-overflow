Rails.application.routes.draw do
  resources :questions do
    resources :answers, only: [:create]
  end

  resources :comments
  resource :session, only: [:new, :create, :destroy]
  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy'


end
