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
    redirect_to cart_path(4)
  end


  def show
  	@cart_item = CartItem.new(item_id: params[:id], cart_id: current_user.cart.id)
  	if @cart_item.save
  		flash[:notice] = "add cart successfully"
   		redirect_to :item
  	else
  		flash[:notice] = "add cart fail"
  		redirect_to :item
  	end
  end


end
