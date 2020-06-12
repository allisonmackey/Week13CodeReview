require 'rails_helper'

describe "post park route", :type => :request do
  before do
    post '/parks', params: {:name => "test park", :address => "test address", :website => "test website", :phone_number => "111-222-3333", :open => true}
  end

  it 'returns the new park object and created status' do
    expect(JSON.parse(response.body)['name']).to eq('test park')
    expect(response).to have_http_status(:created)

  end
end
    