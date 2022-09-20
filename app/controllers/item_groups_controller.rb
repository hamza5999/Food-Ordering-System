class ItemGroupsController < ApplicationController
  def index
    @category = ItemGroup.all
  end

  def new
    @item_group = ItemGroup.new
  end
end
