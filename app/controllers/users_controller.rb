 class UsersController < ApplicationController
   before_action :authenticate_user!, only: [:show]
   before_action :authenticate_admin!, only: [:index]
   before_action :same_id, only: [:show]

   def index
     @users = User.all
   end

   def show
     @user = User.find(params[:id])
     @orders = @user.orders

   end
 end

 private
   def same_id
     user = User.find(params[:id])
    unless current_user[:id] == user.id
       redirect_to root_path
     end
   end

   def authenticate_admin!
     unless current_user && current_user.admin
       redirect_to root_path
     end
   end
