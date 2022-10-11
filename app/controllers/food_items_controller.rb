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

  def destroy
    @food_item = FoodItem.find(params[:id])
    if @food_item.discarded?
      @food_item.destroy
      flash[:notice] = 'Food item was deleted successfully.'
      redirect_to food_items_path
    elsif @food_item.discard
      flash[:notice] = 'Food item was discarded successfully.'
      redirect_to food_items_path
    else
      message = @food_item.errors.full_messages.first.to_s
		  flash[:alert] = "Error: " + message
      redirect_to food_items_path
    end
  end
end
