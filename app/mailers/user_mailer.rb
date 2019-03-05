class UserMailer < ApplicationMailer
	default from: 'no-reply@pussyCat.fr'
 
  def welcome_email(user)
    @user = user 
    @url  = 'localhost:3000' 

    mail(to: @user.email, subject: 'Bienvenue chez nous !') 
  end
  
end
