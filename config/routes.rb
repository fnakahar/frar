Rails.application.routes.draw do

  resources :events
  # collection do
  #   post :confirm
  # end
  resources :room_messages
  resources :rooms
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
