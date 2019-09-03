class Api::ActorsController < ApplicationController

  def index
    @actors = Actor.all 
    render 'index.json.jb'
  end

  def show
    @actor = Actor.find_by(id: params[:id])
    render 'show.json.jb'
  end



  # def body_params
  #   @message = Actor.find_by(params[:first_name])
  #   render 'body_params.json.jb'
  # end

end
