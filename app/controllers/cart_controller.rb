class CartController < ApplicationController

  def update
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
