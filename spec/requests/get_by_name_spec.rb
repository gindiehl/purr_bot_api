require 'rails_helper'

describe "get by breed name route", :type => :request do
  breed = FactoryGirl.create(:breed)

  it 'returns successfull route response' do
    get "/breeds/by_name?name=#{breed.name}"
    expect(response).to have_http_status(200)
  end
end
