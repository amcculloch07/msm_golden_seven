Rails.application.routes.draw do
  get('/', { :controller => 'movies', :action => 'index' })


# Directors
      # Create
      get('/directors', { :controller => 'directors', :action => 'new_form' })

      # Read
      get('/directors', { :controller => 'directors', :action => 'index' })
      get('/directors/:id', { :controller => 'directors', :action => 'show' })

      # Update


      # Delete
      get('/delete_director/:id', { :controller => 'directors', :action => 'destroy' })

# Actors
      # Create
      # Read
      # Update
      # Delete


end
