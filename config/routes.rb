Rails.application.routes.draw do
  root to: "home#index"
  
  resources :movies, only: [ :show, :index, :new, :create ]
  resources :genders, only: [ :show, :index, :new, :create ]
  resources :directors, only: [ :show, :index, :new, :create ]
end
