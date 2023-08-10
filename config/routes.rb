Rails.application.routes.draw do
  resources :admins
  resources :payments
  resources :users
  resources :bookings
  resources :packages
  resources :activities
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
