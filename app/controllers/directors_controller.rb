class DirectorsController < ApplicationController

  def list_of_directors
    render({:template => "director_page/list"})
  end

  def show_details
    person_id = params.fetch("director_id")
    director = Director.where({:id => person_id})
    @person = director.at(0)
    render({:template => "director_page/details"})
  end

  def youngest_director
    @youngest_director =  Director.order(:dob)[-1]
    render({:template => "director_page/the_youngest_director"})
  end

  def eldest_director
    @eldest =  Director.order(:dob).where.not(:dob => nil)[0]
    render({:template => "director_page/the_eldest_director"})
  end
end
