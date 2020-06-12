require 'rails_helper'

describe "delete park route" do
  before do
    @test_park = Park.create!({name: "Test Park", address: "Test Address", website: "testwebsite.com", phone_number: "503-123-1234", open: true})
  end

  it 'will delete a park and return correct message' do
    delete "/parks/#{@test_park.id}"
    expect(response).to have_http_status(200)
    expect(JSON.parse(response.body)['message']).to eq("You've successfully deleted this park")
  end

  it 'will return an error message if user deletes an item that does not exist' do
    delete "/parks/#{@test_park.id}"
    # have to run delete twice do to the before block
    delete "/parks/#{@test_park.id}"
    expect(response).to have_http_status(404)
    expect(JSON.parse(response.body)['message']).to eq("Couldn't find Park with 'id'=#{@test_park.id}")
  end
end