# frozen_string_literal: true

# The MenusController class inherits from the ApplicationController class, and defines an index action
# that sets the @menus instance variable to the result of calling Menu.all.
class MenusController < ApplicationController
  def index
    @q = Menu.ransack(params[:q])
    @menus = @q.result(distinct: true).kept
    @menus = Menu.kept if params[:q].blank?
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
      redirect_to menus_path
    else
      message = @menu.errors.full_messages.first.to_s
      flash[:alert] = "Error: #{message}"
      render 'discarded'
    end
  end
end
