class ParksController < ApplicationController
  def index
    @parks = Park.all
    json_response(@quotes)
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end
end