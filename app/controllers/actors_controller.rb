class ActorsController < ApplicationController
  def index
    @actors = Actor.all
  end

  def show
    @actors = Actor.find_by({ :id => params[:id] })
  end

  def edit_form
    @actors = Actor.find(params[:id])
  end

  def create_row
    @actors = Actor.new
    @actors.name = params[:name]
    @actors.bio = params[:bio]
    @actors.dob = params[:dob]
    @actors.image_url = params[:image_url]

    @actors.save

    redirect_to("/actors/" + @actors.id.to_s)
  end

  def update_row
      @actors = Actor.find(params[:id])
      @actors.dob = params[:dob]
      @actors.name = params[:name]
      @actors.bio = params[:bio]
      @actors.image_url = params[:image_url]

      @actors.save

      redirect_to("/actors/" + @actors.id.to_s)
  end

  def destroy
    @actors = Actor.find(params[:id])
    @actors.destroy
    @actors.save
    redirect_to("/actors")
  end

end
