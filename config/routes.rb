Rails.application.routes.draw do
  resources :admins
  resources :payments
  resources :users
  resources :bookings
  resources :packages
  resources :activities
  # resources :notifications, only: [:index, :create, :show, :update, :destroy] do
  #   collection do
  #     get :count
  #     post :approve_booking
  #   end
  # end

  # resources :user_notifications, only: [:index, :create, :show, :update, :destroy] do
  #   collection do
  #     get :count
  #   end
  # end

  # resources :admin
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  post "/signup", to: "users#create"
  post "/login", to: "sessions#create"
  get "/me", to: "users#show"
  delete "/logout", to: "sessions#destroy"
  # post "/admins/:id", to: "admins#create"
  post "/loginorg", to: "admins_sessions#create"
  get "/meorg", to: "admins#show_meorg"
  delete "/logoutadm", to: "admins_sessions#destroy"
  # get "/admin/:id", to: "admins#show"
  # post "/admins/:id", to: "admins#update"
  # post "/bookings", to: "bookings#create"
  get "/user_homepage", to: "users#homepage", as: "user_homepage"
  post '/postPayment', to: 'payments#create'

  # /sessions
  # resources :sessions, only: %i[create destroy]

end
