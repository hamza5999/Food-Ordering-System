class FoodItemsController < ApplicationController
  def index
    @q = FoodItem.ransack(params[:q])
    @food_items = @q.result(distinct: true)
    if params[:q].blank?
      @food_items = FoodItem.all
    end
  end

  def show
    @food_item = FoodItem.find(params[:id])
  end
end
