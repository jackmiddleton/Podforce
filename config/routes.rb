Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'dashboard', to: 'users#show'

  resources :contacts

  resources :emails

  resources :tasks

  resources :users, only: [:edit, :update]
end
