class ItemGroupsController < ApplicationController
  def index
    @category = ItemGroup.all
  end
end
