require 'faker'
desc 'Create Fake Users'
task :create => :environment do
    500.times do
      email = Faker::Internet.email
      if !User.find_by(email: email)
        User.create(email:email,password:'test',is_subscribed:true,is_admin:false)
      end
    end
end

desc 'Make some console load'
task :print_users => :environment do
  require 'resque'
  Resque.enqueue(Mailer,"akkount35@gmail.com")
end
