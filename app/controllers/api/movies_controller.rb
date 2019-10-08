class Api::MoviesController < ApplicationController
  # before_action :authenticate_admin, except: [:index, :show] 

  def index
    @movies = Movie.all

    if params[:english]
      @movies = Movie.where("english=?", true)
    end   
    render "index.json.jb"
  end

  def show
    @movie = Movie.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @movie = Movie.new(
      title: params[:title],
      year: params[:year],
      plot: params[:plot], 
      director: params[:director], 
      english: params[:english] 
       )
    @movie.save
    render "show.json.jb"
  end

  def update
    @movie = Movie.find_by(id: params[:id])
    @movie.title = params[:title] || @movie.title
    @movie.year = params[:year] || @movie.year
    @movie.plot = params[:plot] || @movie.plot
    @movie.director = params[:director] || @movie.director
    @movie.english = params[:english] || @movie.english
    @movie.save
    render "show.json.jb"
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy 
    render json: {message: "Movie entry destroyed"}
  end
  
end
