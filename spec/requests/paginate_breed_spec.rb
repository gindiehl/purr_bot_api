require 'rails_helper'

describe "get all breeds route", :type => :request do
  before { Breed.destroy_all }
  let!(:breeds) { FactoryGirl.create_list(:breed, 20)}

  before { get '/breeds/page/1'}

  it 'returns all breeds' do
    expect(JSON.parse(response.body).size).to eq(12)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
