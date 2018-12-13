class Mailer
    @queue = :mailing

    def self.perform(email)
        p email
    end
end