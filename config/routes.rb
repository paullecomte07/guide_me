Rails.application.routes.draw do
  devise_for :users
  root to:'pages#home'

  get 'dashboard', to: 'pages#dashboard', as: 'dashboard'

  resources :orders, only: [:show, :create] do
    resources :payments, only: [:new, :create]
  end

  resources :guides do
    resources :reviews, only: [:new, :create]
    resources :stops, only: [:index, :new, :create]
    resources :wishes, only: [:create, :destroy ]
    resources :guide_tags, only: [:create, :destroy ]
    resources :itineraries, only: [:new, :create]
    get 'path', to: 'guides#path', as: 'path'
    post
  end
  resources :reviews, only: [:destroy]

  resources :conversations do
    resources :messages
  end
end
