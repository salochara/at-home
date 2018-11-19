Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :events, only: [:index, :show] do
    resources :reservations , only: [:create]
  end
  resources :users, only: [:show, :edit, :update]



end

