# frozen_string_literal: true

# It's a controller that handles the CRUD operations for food items
class FoodItemsController < ApplicationController
  def index
    @q = FoodItem.ransack(params[:q])
    @food_items = @q.result(distinct: true).kept
    @food_items = FoodItem.kept if params[:q].blank?
  end

  def new
    @food_item = FoodItem.new
  end

  def show
    @food_item = FoodItem.find(params[:id])
  end

  def edit
    @food_item = FoodItem.find(params[:id])
  end

  def destroy
    @food_item = FoodItem.find(params[:id])
    if @food_item.discarded?
      @food_item.destroy
      flash[:notice] = 'Food item was deleted successfully.'
    elsif @food_item.discard
      flash[:notice] = 'Food item was discarded successfully.'
    else
      message = @food_item.errors.full_messages.first.to_s
      flash[:alert] = "Error: #{message}"
    end
    redirect_to food_items_path
  end

  def discarded
    @discarded_fooditems = FoodItem.discarded
  end

  def restore
    @food_item = FoodItem.find(params[:id])
    if @food_item.undiscard
      flash[:notice] = 'Food item was restored successfully.'
      redirect_to food_items_path
    else
      message = @food_item.errors.full_messages.first.to_s
      flash[:alert] = "Error: #{message}"
      render 'discarded'
    end
  end

  def options
    @category = ItemGroup.find(params[:category])
    @options = @category.options
    @option_count = @options.count
    respond_to do |format|
      format.js { render partial: 'food_items/options', locals: { ocount: @option_count, options: @options } }
    end
  end

  def create
    @food_item = FoodItem.new(food_item_params)
    if @food_item.save
      flash[:notice] = 'Food item was created successfully.'
      redirect_to food_items_path
    else
      message = @food_item.errors.full_messages.first.to_s
      flash[:alert] = "Error: #{message}"
      render 'new'
    end
  end

  def update
    @food_item = FoodItem.find(params[:id])
    if @food_item.update(food_item_params)
      flash[:notice] = 'Food item was updated successfully.'
      redirect_to food_items_path
    else
      message = @food_item.errors.full_messages.first.to_s
      flash[:alert] = "Error: #{message}"
      render 'edit'
    end
  end

  private

  def food_item_params
    params.require(:food_item).permit(:name, :discount_id, :item_group_id,
                                      food_item_options_attributes: %i[id food_item_id option_id price _destroy])
  end
end
