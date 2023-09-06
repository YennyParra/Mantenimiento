Rails.application.routes.draw do
  resources :maintenances
  resources :materials
  resources :machines
  resources :cities
  devise_for :users
  get 'home/page'
  get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
