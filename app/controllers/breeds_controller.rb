class BreedsController < ApplicationController
  def index
    @breeds = Breed.all
    json_response(@breeds)
  end

  def show
    @breed = Breed.find(params[:id])
    json_response(@breed)
  end

  def create
    @breed = Breed.create!(breed_params)
    json_response(@breed, :created)
  end

  def update
    @breed = Breed.find(params[:id])
    if @breed.update!(breed_params)
      render status: 200, json: {
        message: "Meow!"
      }
    end
  end

  def destroy
    @breed = Breed.find(params[:id])
    if @breed.destroy!
      render status: 200, json: {
        message: "All out!"
      }
    end
  end

  private
  def breed_params
    params.permit(:name)
  end

end
