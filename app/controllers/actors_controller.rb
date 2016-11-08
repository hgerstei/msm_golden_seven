class ActorsController < ApplicationController
  # CREATE
  def new_form
  end

  def create_row
    a = Actor.new
    a.dob = params[:dob]
    a.name = params[:name]
    a.bio = params[:bio]
    a.image_url = params[:image_url]
    a.save
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
    @actor.save
  end

  def update_row
    @actor = Actor.find(params[:id])
    render("http://localhost:3000/actors")
  end

  # DELETE
  def destroy
    a = Actor.find(params[:id])
    a.destroy
    a.save
    redirect_to("http://localhost:3000/actors")
  end

end
