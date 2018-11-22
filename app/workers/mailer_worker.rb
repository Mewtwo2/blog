class MailerWorker
  include Sidekiq::Worker

  def perform
    # Do something
    User.all.each do |user|
      p user.email
    end
  end
end
