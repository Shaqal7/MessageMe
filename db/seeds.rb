# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.new(
  :email                 => "admin@xxxxx.xxx",
  :password              => "123456",
  :password_confirmation => "123456"
)
user.skip_confirmation!
user.save!


10.times do |i|
  Message.create(body: "This is body of the #{i} message", user: User.last)
end