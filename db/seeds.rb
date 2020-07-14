# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

channels = ["paris", 'react', 'general']

channels.each do |channel|
  chan = Channel.create(name: channel)
  puts "Create #{chan.id} channels"
end

users = [{
  email: 'test1@gmail.com',
  password: '123456'
},
{
  email: "test2@gmail.com",
  password: '123456'
},
{
  email: 'test3@gmail.com',
  password: '123456'
}]

messages = [{
  channel: 3,
  user: 2,
  content: "This is a test"
},
{
  channel: 1,
  user: 1,
  content: "Is it working"
},
{
  channel: 1,
  user: 2,
  content: "Excellent !"
},
]

users.each do |user|
  u = User.create(email: user[:email], password: user[:password])
  puts "Create #{u.id} users"
end

messages.each do |message|
  m = Message.create(user_id: message[:user], channel_id: message[:channel], content: message[:content])
  puts "Create #{m.id} messages"
end
