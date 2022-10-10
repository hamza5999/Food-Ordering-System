class ItemGroupsController < ApplicationController
  def index
    @q = ItemGroup.ransack(params[:q])
    @categories = @q.result(distinct: true).kept
    if params[:q].blank?
      @categories = ItemGroup.available_categories.kept
    end
  end

  def new
    @item_group = ItemGroup.new
  end

  def create
    @item_group = ItemGroup.new(item_group_params)
    if @item_group.save
      flash[:notice] = "Category was created successfully."
      redirect_to item_groups_path
    else
      message = @item_group.errors.full_messages.first.to_s
		  flash[:alert] = "Error: " + message
      render :new
    end
  end

  def destroy
    @item_group = ItemGroup.find(params[:id])
    if @item_group.discarded?
      @item_group.destroy
      flash[:notice] = "Category was deleted successfully."
      redirect_to item_groups_path
    elsif @item_group.discard
      flash[:notice] = "Category was discarded successfully."
      redirect_to item_groups_path
    else
      message = @item_group.errors.full_messages.first.to_s
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
      flash[:notice] = "Category was updated successfully."
      redirect_to item_groups_path
    else
      message = @item_group.errors.full_messages.first.to_s
		  flash[:alert] = "Error: " + message
      render :edit
    end
  end

  def discarded
    @discarded_categories = ItemGroup.discarded
  end

  def restore
    @item_group = ItemGroup.find(params[:id])
    if @item_group.undiscard
      flash[:notice] = 'Category was restored successfully.'
      redirect_to item_groups_path
    else
      message = @item_group.errors.full_messages.first.to_s
      flash[:alert] = "Error: " + message
      render 'discarded'
    end
  end

  private

  def item_group_params
    params.require(:item_group).permit(:name, :availability, options_attributes: [:id, :name, :availability, :restaurant_id, :item_group_id, :_destroy])
  end
end
