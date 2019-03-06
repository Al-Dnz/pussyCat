class ItemController < ApplicationController
  def index
    @items =Item.all
  end

  def show
    @items =Item.all
  end

  def destroy
  end

  # def add_to_cart
  #   @item = Item.find(params[:id])
  #   @cart_item = CartItem.new(item_id: @item.id, cart_id: current_user.cart.id)
  #   @cart_item.save
  #   puts "cart_item crée *****************************************"
  #   flash[:success] = 'Item successfully added to cart!'
  #   redirect_to item_path(params[:id])
  # end



end
