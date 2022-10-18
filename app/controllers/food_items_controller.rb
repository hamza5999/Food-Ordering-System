class FoodItemsController < ApplicationController
  def index
    @q = FoodItem.ransack(params[:q])
    @food_items = @q.result(distinct: true).kept
    if params[:q].blank?
      @food_items = FoodItem.kept
    end
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
      flash[:alert] = "Error: " + message
      render 'discarded'
    end
  end

  def options
    @category = ItemGroup.find(params[:category])
    @options = @category.options
    @option_count = @options.count
    respond_to do |format|
      format.js { render partial: 'food_items/options', locals: {ocount: @option_count, options: @options} }
    end
  end

  def create
    @food_item = FoodItem.new(food_item_params)
    if @food_item.save
      flash[:success] = "Food item was created successfully."
      redirect_to food_items_path
    else
      message = @food_item.errors.full_messages.first.to_s
      flash[:alert] = "Error: " + message
      render 'new'
    end
  end

  private

  def food_item_params
    params.require(:food_item).permit(:name, :discount_id, :item_group_id)
  end
end
