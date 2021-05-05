class MoviesController < ApplicationController
  def index
    @list_of_movies = Movie.all
    @list_of_directors = Director.all

    render({ :template => "movie_templates/index.html.erb" })
    
  end

  def movie_details
    the_id = params.fetch("an_id")

    @the_movie = Movie.where({ :id => the_id }).at(0)

    @the_director = Director.where({ :id => @the_movie.director_id })[0]
    render({ :template => "movie_templates/anid.html.erb" })
    
  end

end