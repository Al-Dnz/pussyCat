 class OrderController < ApplicationController

   def create
     @total =0
     current_user.cart.items.each { |item| @total+=item.price }

     @amont = @total * 100
     customer = Stripe::Customer.create({
       email: params[:stripeEmail],
       source: params[:stripeToken],
       })

       charge = Stripe::Charge.create({
         customer: customer.id,
         amount: @total.to_i * 100,
         description: 'Rails Stripe customer',
         currency: 'eur',
         })

     UserMailer.validate_buy_stripe(current_user).deliver_now
     User.where("admin", "true").each do |admin|
       UserMailer.admin_validate_buy_stripe(current_user, admin).deliver_now
     end

     order = Order.create(user_id: current_user.id, stripe_customer_id: customer.id)
     current_user.cart.items.each do |item|
       ItemOrder.create(order_id: order.id, item_id: item.id)
     end
     current_user.cart.cart_items.each do |cartitem|
       cartitem.destroy
     end
     redirect_to request.referrer

   rescue Stripe::CardError => e
     flash[:error] = e.message
     redirect_to new_charge_path

   end

   def show
     @order = Order.find(params["id"])
   end


end
