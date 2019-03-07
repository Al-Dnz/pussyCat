class UserMailer < ApplicationMailer
	default from: 'no-reply@pussyCat.fr'
  
  def validate_buy_stripe(user)
  	@user = user
  	@url  = 'localhost:3000'

  	mail(to: @user.email, subject: 'validation achat')
  end

  def admin_validate_buy_stripe(user, admin_user)
    @admin_user = admin_user
    @url = 'localhost:3000'
    @user = user
    mail(to: @admin_user.email, subject: 'admin validation achat')
  end

  def welcome_email(user)
    @user = user 
    @url  = 'localhost:3000' 

    mail(to: @user.email, subject: 'Bienvenue chez nous !') 
  end
  
end
