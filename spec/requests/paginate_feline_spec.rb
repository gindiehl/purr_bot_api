require 'rails_helper'

describe "get all felines route", :type => :request do
  before do
    Breed.destroy_all
    breed = FactoryGirl.create(:breed_with_felines)
    get "/breeds/#{breed.id}/felines/page/1"
  end

  it 'returns all felines' do
    expect(JSON.parse(response.body).size).to eq(6)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
