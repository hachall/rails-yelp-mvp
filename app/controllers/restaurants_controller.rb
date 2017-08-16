class RestaurantsController < ApplicationController
  before_action :find_restaurant, only: [ :show ]

  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(set_params)
    @restaurant.save
    redirect_to restaurant_path(@restaurant)
  end


  private

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def set_params
    params.require(:restaurant).permit(:name, :category, :address, :phone_number)
  end


end
