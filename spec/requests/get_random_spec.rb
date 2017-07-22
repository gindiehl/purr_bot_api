require 'rails_helper'

describe "get random felines route", :type => :request do
  before do
    Breed.destroy_all
    breed = FactoryGirl.create(:breed_with_felines)
    get "/breeds/#{breed.id}/felines/random"
  end

  it 'returns random felines for a particular breed' do
    expect(JSON.parse(response.body).size).to eq(6)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
