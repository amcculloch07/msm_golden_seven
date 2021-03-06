Rails.application.routes.draw do
  get('/', { :controller => 'movies', :action => 'index' })

#Movies
      # Create
      get('/movies/new_form', { :controller => 'movies', :action => 'new_form' })
      get('/create_movie', { :controller => 'movies', :action => 'create_row' })

      # Read
      get('/movies', { :controller => 'movies', :action => 'index' })
      get('/movies/:id', { :controller => 'movies', :action => 'show' })

      # Update
      get('/movies/:id/edit_form', { :controller => 'movies', :action => 'edit_form' })
      get('/update_movie/:id', { :controller => 'movies', :action => 'update_row' })

      # Delete
      get('/delete_movie/:id', { :controller => 'movies', :action => 'destroy' })

# Directors
      # Create
      get('/directors/new_form', { :controller => 'directors', :action => 'new_form' })
      get('/create_director', { :controller => 'directors', :action => 'create_row' })

      # Read
      get('/directors', { :controller => 'directors', :action => 'index' })
      get('/directors/:id', { :controller => 'directors', :action => 'show' })

      # Update
      get('/directors/:id/edit_form', { :controller => 'directors', :action => 'edit_form' })
      get('/update_director/:id', { :controller => 'directors', :action => 'update_row' })

      # Delete
      get('/delete_director/:id', { :controller => 'directors', :action => 'destroy' })

# Actors
      # Create
      get('/actors/new_form', { :controller => 'actors', :action => 'new_form' })
      get('/create_actor', { :controller => 'actors', :action => 'create_row' })

      # Read
      get('/actors', { :controller => 'actors', :action => 'index' })
      get('/actors/:id', { :controller => 'actors', :action => 'show' })

      # Update
      get('/actors/:id/edit_form', { :controller => 'actors', :action => 'edit_form' })
      get('/update_actor/:id', { :controller => 'actors', :action => 'update_row' })

      # Delete
      get('/delete_actor/:id', { :controller => 'actors', :action => 'destroy' })

#Role
      # Create
      get('/roles/new_form', { :controller => 'roles', :action => 'new_form' })
      get('/create_role', { :controller => 'roles', :action => 'create_row' })

      # Read
      get('/roles', { :controller => 'roles', :action => 'index' })
      get('/roles/:id', { :controller => 'roles', :action => 'show' })

      # Update
      get('/roles/:id/edit_form', { :controller => 'roles', :action => 'edit_form' })
      get('/update_role/:id', { :controller => 'roles', :action => 'update_row' })

      # Delete
      get('/delete_role/:id', { :controller => 'roles', :action => 'destroy' })

end
