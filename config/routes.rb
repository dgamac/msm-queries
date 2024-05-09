Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })

  get("/directors", { :controller => "directors", :action => "list_of_directors"})


  get("/directors/youngest", { :controller => "directors", :action => "youngest_director"})

  get("/directors/eldest", { :controller => "directors", :action => "eldest_director"})

  get("/directors/:director_id", { :controller => "directors", :action => "show_details"})

  get("/movies", {:controller => "movies", :action => "list_of_movies"})

  get("/movies/:film_id", {:controller => "movies", :action => "movie_details"})

  get("/actors", {:controller => "actors", :action => "actors_list"})

  get("/actors/:actor_id", {:controller => "actors", :action => "actors_details"})
end
