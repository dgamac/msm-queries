class MoviesController < ApplicationController

  def list_of_movies
    
    render({:template => "movie_page/movies_list"})

  end

  def movie_details
    id_of_film = params.fetch("film_id")
    film = Movie.where({:id => id_of_film})
    @film_detail = film.at(0)
    render({:template => "movie_page/movie_details"})
  end
end
