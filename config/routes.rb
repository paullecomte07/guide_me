Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get 'dashboard', to: 'pages#dashboard', as: 'dashboard'

  resources :orders, only: [:show, :create] do
    resources :payments, only: [:new, :create]
  end

  resources :guides do
    resources :reviews, only: [:new, :create]
  end

end
