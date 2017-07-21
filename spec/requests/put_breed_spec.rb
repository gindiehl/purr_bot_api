require 'rails_helper'

describe "the update breed route", :type => :request do
  breed = FactoryGirl.create(:breed)

  it 'tests the put route' do
    put "/breeds/#{breed.id}", params: { :name => 'Abyssinian'}
    get "/breeds/#{breed.id}"
    expect(JSON.parse(response.body)["name"]).to eq('Abyssinian')
  end
end
