Rails.application.routes.draw do

  get   '/login', to: 'sessions#new'
  post  '/login', to: 'sessions#create'

  namespace :admin do
    resources :customers
  end

  root 'pages#index'

  resources :product_admins
  resources :product_users, only: [:show, :index]

end
