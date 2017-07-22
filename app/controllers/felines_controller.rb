class FelinesController < ApplicationController
  def index
    @breed = Breed.find(params[:breed_id])
    @felines = @breed.felines.page params[:page]
    json_response(@felines)
  end

  def show
    @breed = Breed.find(params[:breed_id])
    @feline = @breed.felines.find(params[:id])
    json_response(@feline)
  end

  def random
    @breed = Breed.find(params[:breed_id])
    @felines = @breed.felines.where(age: 1..20)
    json_response(@felines)
  end

  def create
    @breed = Breed.find(params[:breed_id])
    @feline = @breed.felines.create!(feline_params)
    json_response(@feline, :created)
  end

  def update
    @breed = Breed.find(params[:breed_id])
    @feline = Feline.find(params[:id])
    if @feline.update!(feline_params)
      render status: 200, json: {
        message: "Prrr"
      }
    end
  end

  def destroy
    @feline = Feline.find(params[:id])
    if @feline.destroy!
      render status: 200, json: {
        message: "Adopted!"
      }
    end
  end

  private
  def feline_params
    params.permit(:name, :age, :coat_color, :breed_id)
  end
end
