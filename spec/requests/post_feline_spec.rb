require 'rails_helper'

describe "post a feline route", :type => :request do
  before do
    Breed.destroy_all
    breed = FactoryGirl.create(:breed)
    post "/breeds/#{breed.id}/felines", params: { :name => 'Ozzie', :age => 9, :coat_color => '{red, gold, brown, black}' }
  end

  it 'returns a feline' do
    expect(JSON.parse(response.body)['name']).to eq('Ozzie')
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
