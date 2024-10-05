Rails.application.routes.draw do
  root to: "home#index"
  
  resources :movies, only: [ :show, :index, :new, :create, :edit, :update ]
  resources :genders, only: [ :show, :index, :new, :create, :edit, :update ]
  resources :directors, only: [ :show, :index, :new, :create, :edit, :update ]
end
