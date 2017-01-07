Rails.application.routes.draw do
  root 'products#index'
  resources :products
  get 'cart', to: 'cart#index'
  # resource :order, only: [:create, :update, :destroy]
  post 'add_to_cart', to: 'cart_items#create'
  delete 'products/:id', to: 'cart_items#destroy'
end
