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
                             gender: params[:director][:gender],)
    if @director.save
      return redirect_to director(@director.id)
    end

    render :new
  end
end