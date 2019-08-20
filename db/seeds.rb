require 'faker'

User.create!(
  name: 'Reginald',
  email:'reginald@example.com',
  password: 'helloworld',
  password_confirmation: 'helloworld'
)
users = User.all

puts "#{User.count} users created"
