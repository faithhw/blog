# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Seeding...."

10.times do |i|
  user = User.create(email: "email#{i}@gmail.com", password: "123456")
  100.times do
    post = user.posts.create(title: Faker::Lorem.sentence(7, true), content: Faker::Lorem.paragraph)

    10.times do
      tmp_user = User.take
      comment = tmp_user.comments.create(post: post, content: Faker::Lorem.paragraph)
    end
  end
end

puts "End seeding."
