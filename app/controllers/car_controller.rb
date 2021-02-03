class CarController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    render json: Car.all
  end


  def show
    render json: Car.find(params["id"])
  end


  def create
    render json: Car.create(params["car"])
  end

  def delete
    render json: Car.delete(params["id"])
  end


  def update
    render json: Car.update(params["id"], params["car"])
  end

end
