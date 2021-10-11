class BirdsController < ApplicationController

  # GET /birds
  def index
    birds = Bird.all
    render json: birds
  end

  # GET /birds/:id
  def show
    bird = Bird.find_by(id: params[:id])
    if bird
      render json: bird
    else
      render json: { error: "Bird not found" }, status: :not_found
    end
  end

  # POST Request
  def create 
    # get the data from the body of the request
    #byebug
    # create a new Bird 
    bird = Bird.create(name: params[:name], species: params[:species])
    # send the newly created Bird as a response
    render json: bird, status: :created
  end

end