Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root to: 'home#index'

  resources :items do
    resources :pictures, only: [:create]
  end

  devise_for :users

  resources :users, only: [:show]
  
  resources :orders do
    resources :charges
  end

  get 'last_order', to: 'orders#last', as: :last_order

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
