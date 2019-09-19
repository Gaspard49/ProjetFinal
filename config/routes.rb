Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root to: 'home#index'

  resources :items do
    resources :pictures, only: [:create]
  end


  devise_for :users, controllers: { registrations: "registrations" }

  resources :users, only: [:show]
  
  resources :orders do
    resources :charges
  end

  resources :subscribers
  resources :categories
  resources :contact, only: [:index]
  resources :terms, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
