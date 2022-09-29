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

  private

  def discount_params
    params.require(:discount).permit(:name, :kind, :value, :status, :restaurant_id)
  end
end
