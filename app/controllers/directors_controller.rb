class DirectorsController < ApplicationController
  def index
    @directors = Director.all
  end

  def show
    @directors = Director.find_by({ :id => params[:id] })
  end

  def edit_form
    @directors = Director.find(params[:id])
  end

  def create_row
    @directors = Director.new
    @directors.name = params[:name]
    @directors.bio = params[:bio]
    @directors.dob = params[:dob]
    @directors.image_url = params[:image_url]

    @directors.save

    redirect_to("/directors/" + @directors.id.to_s)
  end

  def update_row
      @directors = Director.find(params[:id])

      @directors.dob = params[:dob]
      @directors.name = params[:name]
      @directors.bio = params[:bio]
      @directors.image_url = params[:image_url]

      @directors.save

      redirect_to("/directors/" + @directors.id.to_s)
  end

  def destroy
    @directors = Director.find(params[:id])
    @directors.destroy
    @directors.save
    redirect_to("/directors")
  end

end
