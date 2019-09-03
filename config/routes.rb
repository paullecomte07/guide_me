Rails.application.routes.draw do
  devise_for :users
  root to:'pages#home'

  get 'dashboard', to: 'pages#dashboard', as: 'dashboard'

  resources :orders, only: [:show, :create] do
    resources :payments, only: [:new, :create]
  end

  resources :guides do
    resources :reviews, only: [:new, :create]
    resources :stops, only: [:index, :new, :create] do
      resources :itineraries, only: [:new, :create]
    end
    resources :wishes, only: [:create, :destroy ]
    resources :guide_tags, only: [:create, :destroy ]
    get 'path', to: 'guides#path', as: 'path'
  end
  resources :reviews, only: [:destroy]

  resources :conversations do
    resources :messages
  end
  mount ActionCable.server => "/cable"
end
