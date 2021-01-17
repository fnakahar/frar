Rails.application.routes.draw do

  get     '/login',   to: 'sessions#new'
  post    '/login',   to: 'sessions#create'
  delete  '/logout',  to: 'sessions#destroy'

  namespace :admin do
    resources :customers
  end

  root 'pages#index'

  resources :product_admins
  resources :product_users, only: [:show, :index]

end
