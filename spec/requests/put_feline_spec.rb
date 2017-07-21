require 'rails_helper'

describe "the update feline route", :type => :request do

  it 'tests the put route' do
    breed = FactoryGirl.create(:breed_with_felines)
    put "/breeds/#{breed.id}/felines/#{breed.felines[0].id}", params: { :name => 'Ozzie'}
    get "/breeds/#{breed.id}/felines/#{breed.felines[0].id}"
    expect(JSON.parse(response.body)["name"]).to eq('Ozzie')
  end
end
