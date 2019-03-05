class CartItemController < ApplicationController
  
  def new
    @cart_item = CartItem.new
  end

<<<<<<< HEAD
  def create

  end
=======
>>>>>>> 0483b69c326d8d67a2a34790b70b2ba912073307

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
