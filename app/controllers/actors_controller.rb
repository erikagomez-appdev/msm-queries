class ActorsController < ApplicationController
  def index
    @list_of_actors = Actor.all
    
    
    render({ :template => "actor_templates/index.html.erb" })
    
  end

  def actor_details

    the_id = params.fetch("an_id")

    @the_actor = Actor.where({ :id => the_id }).at(0)

    #@the_director = Director.where({ :id => @the_movie.director_id })[0]
    list_of_characters = Character.all

    @actor_characters = list_of_characters.where({ :actor_id => @the_actor.id })

    @list_of_movies = Movie.all
    
    @list_of_directors = Director.all

    render({ :template => "actor_templates/anid.html.erb" })
    
  end

end