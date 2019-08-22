require 'faker'

User.create!(
  name: 'Tina',
  email:'tina@example.com',
  password: 'helloworld',
  password_confirmation: 'helloworld'
)

users = User.all
