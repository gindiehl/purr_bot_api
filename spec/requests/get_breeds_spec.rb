require 'rails_helper'

describe "get all breeds route", :type => :request do
  before { Breed.destroy_all }
  let!(:breeds) { FactoryGirl.create_list(:breed, 25)}

  before { get '/breeds'}

  it 'returns all breeds' do
    expect(JSON.parse(response.body).size).to eq(25)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
