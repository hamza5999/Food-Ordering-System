class ItemGroupsController < ApplicationController
  def index
    @category = ItemGroup.all
  end

  def new
    @item_group = ItemGroup.new
    @item_group.options.build
  end

  def create
    @item_group = ItemGroup.new(item_group_params)
    if @item_group.save
      redirect_to item_groups_path
    else
      render :new
    end
  end

  def destroy
    @item_group = ItemGroup.find(params[:id])
    if @item_group.destroy
      redirect_to item_groups_path
    else
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

  private

  def item_group_params
    params.require(:item_group).permit(:name, options_attributes: [:id, :name, :restaurant_id, :item_group_id, :_destroy])
  end
end
