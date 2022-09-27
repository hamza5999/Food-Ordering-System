class ItemGroupsController < ApplicationController
  def index
    @q = ItemGroup.ransack(params[:q])
    @category = @q.result(distinct: true)
    if params.dig(:q, :name_cont).blank?
      @category = ItemGroup.available_categories
    end
  end

  def new
    @item_group = ItemGroup.new
  end

  def create
    @item_group = ItemGroup.new(item_group_params)
    if @item_group.save
      flash[:notice] = "Category created successfully."
      redirect_to item_groups_path
    else
      message = @item_group.errors.full_messages.first
		  flash[:alert] = "Error: " + message
      render :new
    end
  end

  def destroy
    @item_group = ItemGroup.find(params[:id])
    if @item_group.destroy
      flash[:notice] = "Category deleted successfully."
      redirect_to item_groups_path
    else
      message = @item_group.errors.full_messages.first
		  flash[:alert] = "Error: " + message
      redirect_to item_groups_path
    end
  end

  def show
    @item_group = ItemGroup.find(params[:id])
    @options = @item_group.options
  end

  def edit
    @item_group = ItemGroup.find(params[:id])
  end

  def update
    @item_group = ItemGroup.find(params[:id])
    if @item_group.update(item_group_params)
      flash[:notice] = "Category updated successfully."
      redirect_to item_groups_path
    else
      message = @item_group.errors.full_messages.first
		  flash[:alert] = "Error: " + message
      render :edit
    end
  end

  def all_categories
    @all = ItemGroup.all
  end

  def categories_unavailable
    @categories_unavailable = ItemGroup.unavailable_categories
  end

  private

  def item_group_params
    params.require(:item_group).permit(:name, :availability, options_attributes: [:id, :name, :availability, :restaurant_id, :item_group_id, :_destroy])
  end
end
