Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :orders, only: [:show, :create] do
  resources :payments, only: [:new, :create]
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'dashboard', to: 'pages#dashboard', as: 'dashboard'

  resources :guides

end
