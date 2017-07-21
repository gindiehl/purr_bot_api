require 'rails_helper'

describe "it shows breed name when a request is made for getting felines", :type => :request do

  before do
    Breed.destroy_all
    breed = FactoryGirl.create(:breed_with_felines)
    get "/breeds/#{breed.id}/felines/#{breed.felines[0].id}"
  end

  it 'returns breed name for that feline' do
    expect(JSON.parse(response.body)["breed"]["name"]).to eq("Abyssinian")
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
