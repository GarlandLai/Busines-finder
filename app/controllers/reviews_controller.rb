class ReviewsController < ApplicationController

  def index
    @restaurants = Restaurant.find(params[:restaurant_id])
    @reviews = @restaurants.reviews.all
    json_response(@reviews)
  end

  def show
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = @restaurant.reviews.find(params[:id])
    json_response(@review)
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = @restaurant.reviews.create!(reviews_params)
  end

  def update
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = @restaurant.reviews.find(params[:id])
    @reviews.update!(review_params)
  end

  def destroy
    @restaurant = Restaurant.find(params[:restaurant_id])
    @reviews = @restaurant.reviews.find(params[:id])
    @reviews.update!(reviews_params)
  end

  private
  def review_params
    params.permit(:name, :rating, :content)
  end
end
