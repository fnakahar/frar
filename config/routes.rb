Rails.application.routes.draw do
  root 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :product_admins
  resources :product_users, only: [:show, :index]

end
