Rails.application.routes.draw do

  root to: 'pages#home'
 resources :categories
  devise_for :users
  resources :users, only: [:show]
resources :events, except: [:destroy]
  # For details Rails.application.routes.draw do
  # ...

resources :profiles, only: [:new, :edit, :create, :update]

end
