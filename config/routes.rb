Rails.application.routes.draw do

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

  # Receieve inputs and actually save new row

  # READ
  # See all rows in a table, e.g., http://localhost:3000/directors

  # See details in an individual row, e.g., http://localhost:3000/directors/4

  # UPDATE
  # Build a pre-populated form to update a row

  # Receive inputs and save the updated row

  # DELETE
  # Delete an individual row, e.g., http://localhost:3000/delete_director/4


  # ------------------- Movies --------------------
  # CREATE
  # See a blank form to build a new row, e.g., http://localhost:3000/directors/new_form

  # Receieve inputs and actually save new row

  # READ
  # See all rows in a table, e.g., http://localhost:3000/directors

  # See details in an individual row, e.g., http://localhost:3000/directors/4

  # UPDATE
  # Build a pre-populated form to update a row

  # Receive inputs and save the updated row

  # DELETE
  # Delete an individual row, e.g., http://localhost:3000/delete_director/4


end
