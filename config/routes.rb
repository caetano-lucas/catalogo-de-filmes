Rails.application.routes.draw do
  root to: "home#index"
  get "movies/:id", to: "movies#show"
  get "movies/", to: "movies#allmovies"
end
