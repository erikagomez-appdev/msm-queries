class ActorsController < ApplicationController
  def index
    @list_of_actors = Actor.all
    @list_of_movies = Movie.all
    
    render({ :template => "actor_templates/index.html.erb" })
    
  end

  def actor_details
    
    render({ :template => "actor_templates/anid.html.erb" })
    
  end

end