class FoodItemsController < ApplicationController
  def index
    @q = FoodItem.ransack(params[:q])
    @food_items = @q.result(distinct: true)
    if params[:q].blank?
      @food_items = FoodItem.all
    end
  end
end
