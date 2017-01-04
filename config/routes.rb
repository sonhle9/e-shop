Rails.application.routes.draw do
  root 'products#index'
  resources :products do
    member do
      get :checkout
    end
  end
end
