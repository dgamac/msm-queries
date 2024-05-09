class ActorsController < ApplicationController

  def actors_list
    render({:template => "actors_page/list_of_actors"})
  end

  def actors_details
    actor_d = params.fetch("actor_id")
    info = Actor.where(:id => actor_d)
    @actor_info = info.at(0)

    @characters = Character.where({:actor_id => info})
    render({:template => "actors_page/details_of_actor"})
  end
end
