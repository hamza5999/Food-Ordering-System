# frozen_string_literal: true

# It's a controller that handles CRUD operations for Discounts model
class DiscountsController < ApplicationController
  def index
    @q = Discount.ransack(params[:q])
    @discounts = @q.result(distinct: true).kept
    @discounts = Discount.active_discounts.kept if params[:q].blank?
  end

  def show
    @discount = Discount.find(params[:id])
    @discount_timelines = @discount.discount_timelines
  end

  def destroy
    @discount = Discount.find(params[:id])
    if @discount.discarded?
      @discount.destroy
      flash[:notice] = 'Discount was deleted successfully.'
    elsif @discount.discard
      flash[:notice] = 'Discount was discarded successfully.'
    else
      message = @discount.errors.full_messages.first.to_s
      flash[:alert] = "Error: #{message}"
    end
    redirect_to discounts_path
  end

  def new
    @discount = Discount.new
  end

  def create
    @discount = Discount.new(discount_params)
    if @discount.save
      flash[:notice] = 'Discount was added successfully.'
      redirect_to discounts_path
    else
      message = @discount.errors.full_messages.first.to_s
      flash[:alert] = "Error: #{message}"
      render 'new'
    end
  end

  def edit
    @discount = Discount.find(params[:id])
  end

  def update
    @discount = Discount.find(params[:id])
    if @discount.update(discount_params)
      flash[:notice] = 'Discount was updated successfully.'
      redirect_to discounts_path
    else
      message = @discount.errors.full_messages.first.to_s
      flash[:alert] = "Error: #{message}"
      render 'edit'
    end
  end

  def discarded
    @discarded_discounts = Discount.discarded
  end

  def restore
    @discount = Discount.find(params[:id])
    if @discount.undiscard
      flash[:notice] = 'Discount was restored successfully.'
      redirect_to discarded_discounts_path
    else
      message = @discount.errors.full_messages.first.to_s
      flash[:alert] = "Error: #{message}"
      render 'discarded'
    end
  end

  private

  def discount_params
    params.require(:discount).permit(:name, :kind, :value, :status, :restaurant_id,
                                     discount_timelines_attributes: %i[id start_date end_date _destroy])
  end
end
