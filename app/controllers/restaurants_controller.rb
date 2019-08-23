class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
    json_response(@restaurants)
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    json_response(@restaurant)
  end

  def create
    @restaurant = Restaurant.create!(restaurant_params)
    json_response(@restaurant, :created)
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    if @restaurant.update!(restaurant_params)
      render status: 200, json: {
        message: "Restaurant successfully updated!"
      }
    end
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    if @restaurant.destroy!
      render status: 200, json: {
        message: "Restaurant has been deleted"
      }
    end
  end

  private
  def restaurant_params
    params.permit(:name, :origin, :location)
  end
end
