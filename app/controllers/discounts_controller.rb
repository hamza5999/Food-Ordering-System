class DiscountsController < ApplicationController
  def index
    @discounts = Discount.all
  end

  def show
    @discount = Discount.find(params[:id])
  end

  def destroy
    @discount = Discount.find(params[:id])
    if @discount.destroy
      flash[:notice] = 'Discount was deleted successfully.'
      redirect_to discounts_path
    else
      message = @item_group.errors.full_messages.first
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
      message = @discount.errors.full_messages.first
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
        message = @discount.errors.full_messages.first
		    flash[:alert] = "Error: " + message
        render 'edit'
      end
  end

  private

  def discount_params
    params.require(:discount).permit(:name, :kind, :value, :status, :restaurant_id)
  end
end
