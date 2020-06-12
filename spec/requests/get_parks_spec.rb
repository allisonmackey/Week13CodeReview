require 'rails_helper'

describe 'get all parks route' do
  before { get '/parks' }
  it 'returns all parks' do
    expect(JSON.parse(response.body).size).to eq(200)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end

describe 'get an individual park route' do
  it 'returns a park' do
    get "/parks/400"
    expect(JSON.parse(response.body)['name']).to eq("Richesse National Park")
  end

  it 'returns an error when fetching a park that does not exist' do
    get '/parks/1' 
    expect(response).to have_http_status(404)
    expect(JSON.parse(response.body)['message']).to eq("Couldn't find Park with 'id'=1")
  end

end

describe 'search path' do
 
  # it 'returns all state parks based on search query' do
  #   get '/search?query=state&park'
  #   expect(JSON.parse(response.body)).to eq('State Park')
  # end
end
