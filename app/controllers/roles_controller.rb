class RolesController < ApplicationController
  def index
    @roles = Role.all
  end

  def show
    @roles = Role.find_by({ :id => params[:id] })
  end

  def new_form
  end

  def create_row
    @roles = Role.new
    @roles.character_name = params[:character_name]
    @roles.movie_id = params[:movie_id]
    @roles.actor_id = params[:actor_id]

    @roles.save

    render("show")
  end

  def edit_form
    @roles = Role.find(params[:id])
  end

  def update_row
    @roles = Role.find(params[:id])

    @roles.character_name = params[:character_name]
    @roles.movie_id = params[:movie_id]
    @roles.actor_id = params[:actor_id]

    @roles.save

    render("show")
  end



  def destroy
    @roles = Role.find(params[:id])
    @roles.destroy
    @roles.save
    redirect_to("/roles")
  end

end
