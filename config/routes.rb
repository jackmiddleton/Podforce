Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'dashboard', to: 'users#show'




  resources :contacts do
    resources :emails, only: [ :index, :new, :create, :show]
  end

  resources :tasks

  resources :users, only: [:edit, :update]


end
