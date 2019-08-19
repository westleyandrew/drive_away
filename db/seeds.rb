# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Destroying all"
Car.destroy_all
User.destroy_all


sam = User.create(email: "sam@gmail.com",
                  password: "123456")

ben = User.create(email: "ben@gmail.com",
                  password: "123456")

wes = User.create(email: "wes@gmail.com",
                  password: "123456")

Car.create(title: "Lovely BMW",
           brand: "BMW",
           model: "X3",
           year: 2006,
           price: 80,
           description: "Very cool car",
           available: true,
           photo:"https://media.whatcar.com/662x440/wc-image/bmw-x340i-aa.jpg",
           address: "Muamera Omerbegovica 3",
           city: "Sarajevo",
           user: User.first
           )

Car.create(title: "Lovely Audi",
           brand: "Audi",
           model: "A4",
           year: 2004,
           price: 50,
           description: "Very cheap car",
           available: true,
           photo:"https://www.autocar.co.uk/sites/autocar.co.uk/files/styles/gallery_slide/public/audi-a4-rt-2015-0024_0.jpg?itok=4Mp5c5H7",
           address: "Liverpool str",
           city: "London",
           user: User.second
           )

puts "Created new seed!"
