class UserMailer < ApplicationMailer

  def new_post(user)
    @user = user
    mail(to: @user.email, subject: 'There is a new post on Teds Blog')
  end

end
