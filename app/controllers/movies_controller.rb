class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movies = Movie.find_by({ :id => params[:id] })
  end
    i = Movie.find_by({ :id => params[:id] })
  def destroy

  end
end
