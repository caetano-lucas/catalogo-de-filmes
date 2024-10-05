class MoviesController < ApplicationController
  def show
    @movie = Movie.find(params[:id])
  end

  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(title: params[:movie][:title],
              year: params[:movie][:year],
              synopsis: params[:movie][:synopsis],
              country: params[:movie][:country],
              time: params[:movie][:time],
              director: params[:movie][:director],
              gender: params[:movie][:gender],)
    if @movie.save
      return redirect_to movie_path(@movie.id)
    end

    render :new
  end
end
