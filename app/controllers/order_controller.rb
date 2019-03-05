 class OrderController < ApplicationController

   def create
     order = Order.create(user_id: current_user.id)
     current_user.cart.items.each do |item|
       ItemOrder.create(order_id: order.id, item_id: item.id)
     end
     current_user.cart.cart_items.each do |cartitem|
       cartitem.destroy
     end
   end

 end
