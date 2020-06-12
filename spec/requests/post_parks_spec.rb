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

describe "exceptions on POST park route" do
  it 'returns an error if all params are not filled out' do
    post '/parks', params: {:name => nil, :address => "test address", :website => "test website", :phone_number => "111-222-3333"}
  
    expect(JSON.parse(response.body)['message']).to eq("Validation failed: Name can't be blank")
    expect(response).to have_http_status(422)
  end
end
    