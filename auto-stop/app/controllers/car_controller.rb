class CarController < ApplicationController
<<<<<<< HEAD
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
=======
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

end
>>>>>>> d19cf86fabfec1e02e89f9f85bc3b618d5d5eb42
