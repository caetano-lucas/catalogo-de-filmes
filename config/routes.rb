Rails.application.routes.draw do
  root to: "home#index"
  get "movies/:id", to: "movies#show", as: "movie"
  get "movies/", to: "movies#allmovies", as: "allmovies"
end
