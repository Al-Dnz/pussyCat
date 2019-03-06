 class UsersController < ApplicationController
   def show
     @user = User.find(params[:id])
     @orders = @user.orders
     @total=0
   end
 end
