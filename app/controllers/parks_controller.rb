class ParksController < ApplicationController
  def index
    @parks = Park.all
    json_response(@parks)
  end

  def search 
    @parks = Park.search_by_term(params[:query])
    if @parks.any?
      json_response(@parks)
    else
      render status: 200, json: {
        message: "It doesn't look like your search returned any results, please try again"
      }
    end

  end
  
  def show
    @park = Park.find(params[:id])
    json_response(@park)
  end

  def create
    @park = Park.create!(park_params)
    json_response(@park, :created)
  end

  def update
    @park = Park.find(params[:id])
    if @park.update!(park_params)
      render status: 200, json: {
        message: "This park has been successfully updated"
      }
    end
  end

  def destroy
    @park = Park.find(params[:id])
    if @park.destroy
      render status: 200, json: {
        message: "You've successfully deleted this park"
      }
    end
  end

  private

  def park_params
    params.permit(:name, :address, :website, :phone_number, :open)
  end

  def json_response(object, status = :ok)
    render json: object, status: status
  end
end