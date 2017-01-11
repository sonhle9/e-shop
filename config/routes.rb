Rails.application.routes.draw do
  root 'products#index'
  resources :products
  get 'cart', to: 'cart#index'
  resources :cart_items, only: [:create, :update, :destroy]
  resources :orders, only: [:create, :update, :destroy]
  resources :users, except: [:new]
  get '/signup', to: 'users#new'
end
