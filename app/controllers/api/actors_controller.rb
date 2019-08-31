class Api::ActorsController < ApplicationController
  def single_actor
    @single_actor = Actor.find_by(id: params[:id])
    render 'single_actor.json.jb'
  end

  def show
    actor = params[:first_name]
    @message = "Yes, #{actor} is an actor."
    render 'show.json.jb'
  end

  def body_params
    @message = Actor.find_by(params[:first_name])
    render 'body_params.json.jb'
  end
  
end
