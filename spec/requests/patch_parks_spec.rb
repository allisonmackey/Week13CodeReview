require 'rails_helper'

describe 'update park route' do
  before do
    @test_park = Park.create!({name: "Test Park", address: "Test Address", website: "testwebsite.com", phone_number: "503-123-1234", open: true})
  end

  it 'will update a park and return correct message' do
    patch "/parks/#{@test_park.id}", params: {name: "Test Update"}
    expect(JSON.parse(response.body)['message']).to eq("This park has been successfully updated")
    expect(response).to have_http_status(200)
  end
end