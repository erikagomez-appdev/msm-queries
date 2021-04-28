class DirectorsController < ApplicationController

  def  index
    @list_of_directors = Director.all
    render({ :template => "director_templates/index.html.erb" })
  end

  def  eldest  

    @oldest = Director.where.not({ :dob => nil }).order({:dob => :asc}).at(0)
    render({ :template => "director_templates/eldest.html.erb" })
  end

  def  youngest  

    @youngest = Director.where.not({ :dob => nil }).order({:dob => :desc}).at(0)
    render({ :template => "director_templates/youngest.html.erb" })
  end

  def  director_details  

    #Parameters: {"id"=>"1"}
    the_id = params.fetch("id")

    @the_director = Director.where({ :id => the_id })

    render({ :template => "director_templates/anid.html.erb" })
  end

end
