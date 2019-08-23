class ReviewsController < ApplicationController

  def index
    @restaurants = Restaurant.find(params[:restaurant_id])
    @reviews = @restaurants.reviews.all
    json_response(@reviews)
  end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = @restaurant.reviews.new
    json_response(@review)
  end

  def show
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = @restaurant.reviews.find(params[:id])
    json_response(@review)
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = @restaurant.reviews.create!(review_params)
    json_response(@review, :created)
  end

  def update
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = @restaurant.reviews.find(params[:id])
    if @review.update!(review_params)
      render status: 200, json: {
        message: "Review successfully updated!"
      }
    end
  end

  def destroy
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = @restaurant.reviews.find(params[:id])
    if @review.update(review_params)
      render status: 200, json: {
        message: "Restaurant has been deleted"
      }
    end
  end

  private
  def review_params
    params.permit(:name, :rating, :content)
  end
end
