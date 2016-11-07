class DirectorsController < ApplicationController
  # CREATE
  def new_form
  end

  def create_row
    d = Director.new
    d.dob = params[:dob]
    d.name = params[:name]
    d.bio = params[:bio]
    d.image_url = params[:image_url]
    d.save
    redirect_to("http://localhost:3000/directors")
  end

  # READ
  def index
    @director = Director.all
  end

  def show
    @director = Director.find(params[:id])

  end

  # UPDATE
  def edit_form
    @director = Director.find(params[:id])
    @director.save
  end

  def update_row
    redirect_to("http://localhost:3000/directors")
  end

  # DELETE
  def destroy
    d = Director.find(params[:id])
    d.destroy
    d.save
    redirect_to("http://localhost:3000/directors")
  end

end
