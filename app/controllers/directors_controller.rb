class DirectorsController < ApplicationController
  def show
    @director = Director.find(params[:id])
  end

  def index
    @director = Director.all
  end

  def new
    @director = Director.new
  end

  def create
    @director = Director.new(name: params[:director][:name],
                             country: params[:director][:country],
                             gender: params[:director][:gender_id],)
    if @director.save
      return redirect_to director_path(@director.id)
    end

    render :new
  end
end