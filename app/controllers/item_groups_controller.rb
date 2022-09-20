class ItemGroupsController < ApplicationController
  def index
    @category = ItemGroup.all
  end

  def new
  end
end
