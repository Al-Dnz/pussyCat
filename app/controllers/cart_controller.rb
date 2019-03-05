class CartController < ApplicationController
before_action :authenticate_user, only: [:show, :index , :update]

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

  def create
  end

  def index
    @cart = Cart.find_by(user_id: current_user.id)
    @items =  []
    CartItem.where(cart_id: @cart.id).each do |cart_item|
        @items << Item.find(cart_item.item_id)
    end
    @total =0
    @items.each { |item| @total+=item.price }
  end

  def destroy

  end

  private

  def authenticate_user
    unless current_user
      #flash[:danger] = "Connectez vous afin d'accéder aux fonctionnalités"
      redirect_to new_user_session_path
    end

  end

end
