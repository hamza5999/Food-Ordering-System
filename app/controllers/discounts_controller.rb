class DiscountsController < ApplicationController
  def index
    @q = Discount.ransack(params[:q])
    @discounts = @q.result(distinct: true).kept
    if params[:q].blank?
      @discounts = Discount.active_discounts.kept
    end
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
      redirect_to discounts_path
    elsif @discount.discard
      flash[:notice] = 'Discount was discarded successfully.'
      redirect_to discounts_path
    else
      message = @discount.errors.full_messages.first.to_s
		  flash[:alert] = "Error: " + message
      redirect_to discounts_path
    end
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
		  flash[:alert] = "Error: " + message
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
		    flash[:alert] = "Error: " + message
        render 'edit'
      end
  end

  def discarded
    @discarded_discounts = Discount.discarded
  end

  private

  def discount_params
    params.require(:discount).permit(:name, :kind, :value, :status, :restaurant_id, discount_timelines_attributes: [:id, :start_date, :end_date, :_destroy])
  end
end
