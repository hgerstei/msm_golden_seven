class DirectorsController < ApplicationController
  # CREATE
  def new_form
  end

  def create_row
    d = Director.new
    d.save
    redirect_to("http://localhost:3000/directors")
  end

  # READ
  def index
    d = Director.all
  end

  def show
    d = Director.find(:id)
  end

  # UPDATE
  def edit_form
    d = Director.find(:id)
    d.save
  end

  def update_row
    redirect_to("http://localhost:3000/directors")
  end

  # DELETE
  def destroy
    d = Director.find(:id)
    d.destroy
    d.save
    redirect_to("http://localhost:3000/directors")
  end

end
