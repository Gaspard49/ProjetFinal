Rails.application.routes.draw do
  root to: 'home#index'
  resources :items do
    resources :pictures, only: [:create]
  end
  
  devise_for :users 
    resources :users, only: [:show]
  
  resources :order
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end
