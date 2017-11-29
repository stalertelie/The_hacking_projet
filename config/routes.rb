Rails.application.routes.draw do
  resources :products

  root "email#index"

  resources :email

  resources :products
  resources :categories
end
