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

  private

  def item_group_params
    params.require(:item_group).permit(:name, options_attributes: [:id, :name, :restaurant_id, :item_group_id, :_destroy])
  end
end
