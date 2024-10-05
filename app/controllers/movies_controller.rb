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
              director_id: params[:movie][:director_id],
              gender_id: params[:movie][:gender_id],)
    if @movie.save
      return redirect_to movie_path(@movie.id)
    end

    render :new
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    if @movie.update(title: params[:movie][:title],
      year: params[:movie][:year],
      synopsis: params[:movie][:synopsis],
      country: params[:movie][:country],
      time: params[:movie][:time],
      director_id: params[:movie][:director_id],
      gender_id: params[:movie][:gender_id],)
      return redirect_to movie_path(@movie.id)
    end
    render :edit
  end
end
