Rails.application.routes.draw do

  get("/", :controller => "movies", :action => "index")

  # ------------------- Directors --------------------
  # CREATE
  # See a blank form to build a new row, e.g., http://localhost:3000/directors/new_form
  get("/directors/new_form", :controller => "directors", :action => "new_form")
  # Receieve inputs and actually save new row
  get("/directors/create_row", :controller => "directors", :action => "create_row")

  # READ
  # See all rows in a table, e.g., http://localhost:3000/directors
  get("/directors", :controller => "directors", :action => "index")
  # See details in an individual row, e.g., http://localhost:3000/directors/4
  get("/directors/:id", :controller => "directors", :action => "show")

  # UPDATE
  # Build a pre-populated form to update a row
  get("/directors/:id/edit", :controller => "directors", :action => "edit_form")
  # Receive inputs and save the updated row
  get("/update_director/:id", :controller => "directors", :action => "update_row")

  # DELETE
  # Delete an individual row, e.g., http://localhost:3000/delete_director/4
  get("/delete_director/:id", :controller => "directors", :action => "destroy")

  # ------------------- Actors --------------------
  # CREATE
  # See a blank form to build a new row, e.g., http://localhost:3000/directors/new_form
  get("/actors/new_form", :controller => "actors", :action => "new_form")
  # Receieve inputs and actually save new row
  get("/actors/create_row", :controller => "actors", :action => "create_row")

  # READ
  get("/actors", :controller => "actors", :action => "index")
  # See details in an individual row, e.g., http://localhost:3000/directors/4
  get("/actors/:id", :controller => "actors", :action => "show")

  # UPDATE
  # Build a pre-populated form to update a row
  get("/actors/:id/edit", :controller => "actors", :action => "edit_form")
  # Receive inputs and save the updated row
  get("/update_actor/:id", :controller => "actors", :action => "update_row")

  # DELETE
  # Delete an individual row, e.g., http://localhost:3000/delete_director/4
  get("/delete_actor/:id", :controller => "actors", :action => "destroy")


  # ------------------- Movies --------------------
  # CREATE
  # See a blank form to build a new row, e.g., http://localhost:3000/directors/new_form
  get("/movies/new_form", :controller => "movies", :action => "new_form")
  # Receieve inputs and actually save new row
  get("/movies/create_row", :controller => "movies", :action => "create_row")

  # READ
  get("/movies", :controller => "movies", :action => "index")
  # See details in an individual row, e.g., http://localhost:3000/directors/4
  get("/movies/:id", :controller => "movies", :action => "show")

  # UPDATE
  # Build a pre-populated form to update a row
  get("/movies/:id/edit", :controller => "movies", :action => "edit_form")
  # Receive inputs and save the updated row
  get("/movies_actor/:id", :controller => "movies", :action => "update_row")

  # DELETE
  # Delete an individual row, e.g., http://localhost:3000/delete_director/4
  get("/delete_movie/:id", :controller => "movies", :action => "destroy")


end
