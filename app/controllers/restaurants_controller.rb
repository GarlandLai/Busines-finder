class RestaurantsController < ApplicationController

  def index
    @restaurants = {}
    json_response(@quotes)
  end
  

  private
  def json_response(object, status = :ok)
    render json: object, status
  end

end
