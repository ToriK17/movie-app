class Api::ActorsController < ApplicationController
  def single_actor
    @single_actor = Actor.find_by(id: params[:id])
    render 'single_actor.json.jb'
  end
  
end
