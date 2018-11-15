require 'faker'
desc 'Create Fake Users'
task :create => :environment do
    5000.times do
      email = Faker::Internet.email
      if !User.find_by(email: email)
        User.create(email:email,password:'test',is_subscribed:true,is_admin:false)
      end
    end
end
