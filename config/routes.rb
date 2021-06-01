Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'


  resources :contacts do
    resources :emails, only: [ :index, :new, :create, :show]
  end

  resources :tasks, only: [ :index, :new, :create, :show ]

  resources :users, only: [ :edit, :update, :show]


end
