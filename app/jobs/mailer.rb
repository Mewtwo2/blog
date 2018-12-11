class Mailer
    @queue = :mailing

    def self.perform(email)
        user = User.first
        user.email = email
        user.save
    end
end