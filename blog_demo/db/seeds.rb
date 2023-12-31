# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(email: "test@gmail.com", password: '123456', password_confirmation: '123456')

5.times do |x|
    Post.create(title: "Title #{x+1}", body: "Body for post #{x+1}", user_id: User.first.id)
end