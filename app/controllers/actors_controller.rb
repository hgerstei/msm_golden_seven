class ActorsController < ApplicationController
  # CREATE
  def new_form
  end

  def create_row
    @actor = Actor.new
    @actor.dob = params[:dob]
    @actor.name = params[:name]
    @actor.bio = params[:bio]
    @actor.image_url = params[:image_url]
    @actor.save
    redirect_to("http://localhost:3000/actors")
  end

  # READ
  def index
    @actor = Actor.all
  end

  def show
    @actor = Actor.find(params[:id])

  end

  # UPDATE
  def edit_form
    @actor = Actor.find(params[:id])
  end

  def update_row
    @actor = Actor.find(params[:id])

    @actor.dob = params[:dob]
    @actor.name = params[:name]
    @actor.bio = params[:bio]
    @actor.image_url = params[:image_url]

    @actor.save

    render("show")
  end

  # DELETE
  def destroy
    p = Actor.find(params[:id])
    p.destroy
    p.save
    redirect_to("http://localhost:3000/actors")
  end

end
