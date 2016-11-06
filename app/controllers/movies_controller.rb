class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movies = Movie.find_by({ :id => params[:id] })
  end

  def destroy

  end
end
