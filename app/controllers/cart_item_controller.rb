class CartItemController < ApplicationController

  def new
    @cart_item = CartItem.new
  end

  def show
    @cart_item = CartItem.find(params[:id])
    puts  "tried ********************$"
  end

  def destroy
    puts  "tried  delete ********************$"
    @cart_item = CartItem.find(params[:id])
    @cart_item.destroy
    redirect_to request.referrer
  end
end
