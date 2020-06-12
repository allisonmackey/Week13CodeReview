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
  