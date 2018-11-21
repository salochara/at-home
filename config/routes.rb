Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :events, only: [:index, :show] do
    resources :reservations ,only: [:create]
    collection do
      get 'results'
    end
  end
  resources :users, only: [:show, :edit, :update]

  resources :reservations, only: [:destroy]




end

