class DirectorsController < ApplicationController
  def index
    @directors = Director.all
  end

  def show
    @directors = Director.find_by({ :id => params[:id] })
  end

  def destroy
  end

end
