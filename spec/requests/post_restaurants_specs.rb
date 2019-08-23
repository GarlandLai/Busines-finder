require 'rails_helper'

FactoryBot.find_definitions
describe "post a restaurant route", :type => :request do

  before do
    post '/restaurants', params: { :name => 'test_name', :origin => 'test_origin', :location => 'test_location'}
  end

  it 'returns the restaurants name ' do
    expect(JSON.parse(response.body)['name']).to eq('test_name')
  end

  it 'returns the restaurant origin' do
    expect(JSON.parse(response.body)['origin']).to eq('test_origin')
  end

  it 'returns the restaurant location' do
    expect(JSON.parse(response.body)['location']).to eq('test_location')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end
