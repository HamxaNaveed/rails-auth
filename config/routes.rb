Rails.application.routes.draw do

  get "signup", to: "users#new"
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  get "logout", to: "sessions#destroy"

  resources :articles
  resources :users, expect: [:new]

  root "home#index"  
end
