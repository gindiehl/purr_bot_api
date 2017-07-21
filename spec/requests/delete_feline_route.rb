require 'rails_helper'

describe "the delete feline route", :type => :request do

  it 'returns a deleted status' do
    breed = FactoryGirl.create(:breed_with_felines)
    get "/breeds/#{breed.id}/felines/#{breed.felines[0].id}"
    delete "/breeds/#{breed.id}/felines/#{breed.felines[0].id}"
    expect(response).to have_http_status(200)
  end
end
