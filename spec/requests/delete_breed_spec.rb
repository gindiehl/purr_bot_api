require 'rails_helper'

describe "the delete breed route", :type => :request do
  breed = FactoryGirl.create(:breed)

  it 'returns a deleted status' do
    get "/breeds/#{breed.id}"
    delete "/breeds/#{breed.id}"
    expect(response).to have_http_status(200)
  end
end
