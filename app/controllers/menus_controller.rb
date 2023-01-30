# frozen_string_literal: true

# The MenusController class inherits from the ApplicationController class, and defines an index action
# that sets the @menus instance variable to the result of calling Menu.all.
class MenusController < ApplicationController
  def index
    @q = Menu.ransack(params[:q])
    @menus = @q.result(distinct: true).kept
    @menus = Menu.kept if params[:q].blank?
  end

  def new
    @menu = Menu.new
    @menu_items = []
    Deal.all.map { |deal| @menu_items << { menu_itemable_id: deal.id, menu_itemable_type: 'Deal' } }
    ItemGroup.all.map { |category| @menu_items << { menu_itemable_id: category.id, menu_itemable_type: 'ItemGroup' } }
    @menu.menu_items.build(@menu_items.map { |menu_item| menu_item })
  end

  def create
    @menu = Menu.new(menu_params)
    if @menu.save
      flash[:notice] = 'Menu was created successfully.'
      redirect_to menus_path
    else
      message = @menu.errors.full_messages.first.to_s
      flash[:alert] = "Error: #{message}"
      render 'new'
    end
  end

  def edit
    @menu = Menu.find(params[:id])
    @menu_items = []
    Deal.all.map do |deal|
      unless @menu.menu_items.exists?(menu_itemable_id: deal.id)
        @menu_items << { menu_itemable_id: deal.id, menu_itemable_type: 'Deal' }
      end
    end
    ItemGroup.all.map do |category|
      unless @menu.menu_items.exists?(menu_itemable_id: category.id)
        @menu_items << { menu_itemable_id: category.id, menu_itemable_type: 'ItemGroup' }
      end
    end
    @menu.menu_items.build(@menu_items.map { |menu_item| menu_item })
  end

  def update
    @menu = Menu.find(params[:id])
    if @menu.update(menu_params)
      flash[:notice] = 'Menu was updated successfully.'
      redirect_to menus_path
    else
      message = @menu.errors.full_messages.first.to_s
      flash[:alert] = "Error: #{message}"
      render 'edit'
    end
  end

  def show
    @menu = Menu.find(params[:id])
  end

  def destroy
    @menu = Menu.find(params[:id])
    if @menu.discarded?
      @menu.destroy
      flash[:notice] = 'Menu was deleted successfully.'
    elsif @menu.discard
      flash[:notice] = 'Menu was discarded successfully.'
    else
      message = @menu.errors.full_messages.first.to_s
      flash[:alert] = "Error: #{message}"
    end
    redirect_to menus_path
  end

  def discarded
    @discarded_menus = Menu.discarded
  end

  def restore
    @menu = Menu.find(params[:id])
    if @menu.undiscard
      flash[:notice] = 'Menu was restored successfully.'
      redirect_to discarded_menus_path
    else
      message = @menu.errors.full_messages.first.to_s
      flash[:alert] = "Error: #{message}"
      render 'discarded'
    end
  end

  private

  def menu_params
    params.require(:menu).permit(:title, :availability, :restaurant_id,
                                 menu_timings_attributes: %i[id start_time end_time days menu_id _destroy],
                                 menu_items_attributes: %i[id menu_itemable_id menu_itemable_type _destroy])
  end
end
