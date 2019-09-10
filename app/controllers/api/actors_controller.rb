class Api::ActorsController < ApplicationController
 
  def index
    @actors = Actor.all

    if params[:sort]
      @actors = Actor.all.order(age: :desc) 
    end 

    render 'index.json.jb'
  end

  def show
    @actor = Actor.find_by(id: params[:id])
    render 'show.json.jb'
  end

  def create
    @actor = Actor.new(
     first_name: params[:first_name], 
     last_name: params[:last_name],
     known_for: params[:known_for], 
     age: params[:age], 
     gender: params[:gender], 
     movie_id: params[:movie_id])
    @actor.save
    render 'show.json.jb'
  end

  def update
    @actor = Actor.find_by(id: params[:id])
    @actor.first_name = params[:first_name] || @actor.first_name
    @actor.last_name = params[:last_name] || @actor.last_name
    @actor.known_for = params[:known_for] || @actor.known_for
    @actor.age = params[:age] || @actor.age
    @actor.gender = params[:gender] ||@actor.gender
    @actor.movie_id = params[:movie_id] ||@actor.movie_id
    @actor.save

    render 'show.json.jb'
  end

  def destroy
    @actor = Actor.find(params[:id])
    @actor.destroy
    render json: {message: "Actor sent to the abyss" }
  end



  # def body_params
  #   @message = Actor.find_by(params[:first_name])
  #   render 'body_params.json.jb'
  # end

end
