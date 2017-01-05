Rails.application.routes.draw do
  root 'products#index'
  resources :products
  get 'cart/index'
  get 'cart/add'
end
