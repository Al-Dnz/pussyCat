class CartItemController < ApplicationController
  def new
    @cart_item = CartItem.new
  end

  def create
  	@cart_item = CartItem.new(item_id: params[:item_id], cart_id: 4)
  	if @cart_item.save
  		flash[:notice] = "add cart successfully"
   		  redirect_to root
  	else
  		flash[:notice] = "add cart fail"
  		  redirect_to root
  	end
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
