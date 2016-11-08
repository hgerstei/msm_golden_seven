class MoviesController < ApplicationController
  # CREATE
  def new_form
  end

  def create_row
    @movie = Movie.new
    @movie.title = params[:title]
    @movie.year = params[:year]
    @movie.duration = params[:duration]
    @movie.description = params[:description]
    @movie.image_url = params[:image_url]
    @movie.save
    redirect_to("http://localhost:3000/movies")
  end

  # READ
  def index
    @movie = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])

  end

  # UPDATE
  def edit_form
    @movie = Movie.find(params[:id])
  end

  def update_row
    @movie = Movie.find(params[:id])

    @movie.dob = params[:dob]
    @movie.name = params[:name]
    @movie.bio = params[:bio]
    @movie.image_url = params[:image_url]

    @movie.save

    render("show")
  end

  # DELETE
  def destroy
    p = Movie.find(params[:id])
    p.destroy
    p.save
    redirect_to("http://localhost:3000/movies")
  end

end
