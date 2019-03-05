class CartItemController < ApplicationController

  def show
  	@cart_item = CartItem.new(item_id: params[:id], cart_id: 1)
  	if @cart_item.save
  		flash[:notice] = "add cart successfully"
   		redirect_to :item
  	else
  		flash[:notice] = "add cart fail"
  		redirect_to :item
  	end
  end

end
