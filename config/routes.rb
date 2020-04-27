Rails.application.routes.draw do
  # devise_for :users
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'colleges#index'

  get 'about', to: 'pages#about'

  # resources :reviews, only:[ :new, :create ]
  resources :reviews, only: [ :destroy ]

  resources :users, only: :show do
    resources :reviews, only:[ :index ]
  end

  resources :colleges, only:[ :index, :edit, :show] do
    resources :reviews, only:[ :index, :new, :create ]
  end
end
