class Post < ApplicationRecord
  after_save :send_mail

  private
  
  def send_mail
    User.all.each do |user|
      if user.is_subscribed
        UserMailer.new_post(user).deliver_now
      end
    end
  end

end
