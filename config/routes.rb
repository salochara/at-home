Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :events, only: [:index, :show]
  resources :users, only: [:show, :edit, :update]
end
