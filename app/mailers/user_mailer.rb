class UserMailer < ApplicationMailer
	default from: 'no-reply@pussyCat.fr'
  
  def validate_buy_stripe(user)
  	@user = user
  	@url  = 'localhost:3000'

  	mail(to: @user.email, subject: 'validation achat')
  end



  def welcome_email(user)
    @user = user 
    @url  = 'localhost:3000' 

    mail(to: @user.email, subject: 'Bienvenue chez nous !') 
  end
  
end
