class UserMailer < ApplicationMailer
  default from: 'yoantory2@gmail.com'

  def welcome_email(user)
    @user = user
    @url = '#'
    mail(to: @user.email, subject: 'Bienvenue chez Catstore')
  end

end
