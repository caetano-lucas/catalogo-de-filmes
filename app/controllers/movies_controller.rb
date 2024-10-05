class MoviesController < ApplicationController
  def show
    @movie = Movie.find(params[:id])
  end

  def allmovies
    @movies = Movie.all
  end
end
