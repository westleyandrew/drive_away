# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "Destroying all"
Review.destroy_all
Booking.destroy_all
Car.destroy_all
User.destroy_all


sam = User.create(email: "sam@gmail.com",
                  password: "123456")

ben = User.create(email: "ben@gmail.com",
                  password: "123456")

wes = User.create(email: "wes@gmail.com",
                  password: "123456")

url = "https://media.whatcar.com/662x440/wc-image/bmw-x340i-aa.jpg"
car1 = Car.new(title: "Sporty BMW",
           brand: "BMW",
           model: "X3",
           year: 2006,
           price: 82.50,
           description: "Extremely reliable car. Lots of seats",
           available: true,
           address: "19 Henryson Road, London, SE4 1HL",
           user: User.first
           )
car1.remote_photo_url = url
car1.save
car1_id = car1.id

url = "https://www.mercedes-benz.com.my/passengercars/mercedes-benz-cars/models/c-class/saloon/equipment/equipment_line_comparison/_jcr_content/comparisonslider/par/comparisonslide_7143/exteriorImage.MQ6.12.20181023075440.jpeg"
car2 = Car.new(title: "Elegant Mercedes",
           brand: "Mercedes",
           model: "A220D",
           year: 2015,
           price: 75.00,
           description: "Wonderful to drive. In perfect condition",
           available: true,
           address: "10 Downing Street, London",
           user: User.second
           )
car2.remote_photo_url = url
car2.save
car2_id = car2.id

url = "https://pictures.dealer.com/b/boardwalkferrari/0390/eda171ddf38db2597efffa0bcdb6c57ax.jpg"
car3 = Car.new(title: "Powerful Ferrari",
           brand: "Ferrari",
           model: "F11",
           year: 2018,
           price: 150.00,
           description: "Wonderful to drive. In perfect condition",
           available: true,
           address: "Peckham Rye Lane, Peckham",
           user: User.third
           )
car3.remote_photo_url = url
car3.save
car3_id = car3.id

url = "https://www.telegraph.co.uk/cars/images/2017/04/07/Micra-main_trans_NvBQzQNjv4BqLERBBIIOvNhzVX8wonGnHCmIF26WS0SDi7Vo6rnpH4o.JPG?imwidth=450"
car4 = Car.new(title: "Sporty Nissan Micra",
           brand: "Nissan",
           model: "Micra",
           year: 2006,
           price: 80.00,
           description: "Wonderful to drive. In perfect condition",
           available: true,
           address: "Knole Park, Sevenoaks",
           user: User.first
           )
car4.remote_photo_url = url
car4.save
car4_id = car4.id

url = "https://cdn.images.express.co.uk/img/dynamic/24/590x/New-Dacia-Sandero-Stepway-SE-Summit-2017-805693.jpg"
car5 = Car.new(title: "Smooth driving Dacia Sandero",
           brand: "Dacia",
           model: "Sandero",
           year: 2012,
           price: 35.00,
           description: "Wonderful to drive. In perfect condition",
           available: true,
           address: "Highgate Cemetery, London",
           user: User.second
           )
car5.remote_photo_url = url
car5.save
car5_id = car5.id

url = "https://amp.businessinsider.com/images/5a145f39f914c35a018b54fc-750-562.jpg"
car6 = Car.new(title: "Graceful Aston Martin",
           brand: "Aston Martin",
           model: "DB50",
           year: 2012,
           price: 120.00,
           description: "Wonderful to drive. In perfect condition",
           available: true,
           address: "Roehyde Way, Hatfield AL10 9AF",
           user: User.second
           )
car6.remote_photo_url = url
car6.save
car6_id = car6.id

url = "https://www.autocar.co.uk/sites/autocar.co.uk/files/volvo-v60-polestar-road-test-main002.jpg"
car7 = Car.new(title: "Dependable Volvo",
           brand: "Volvo",
           model: "220D",
           year: 2012,
           price: 62.00,
           description: "Wonderful to drive. In perfect condition",
           available: true,
           address: "16 High St, Cookham, Maidenhead SL6 9SJ",
           user: User.second
           )
car7.remote_photo_url = url
car7.save
car7_id = car7.id

url = "https://auto.ndtvimg.com/car-images/big/volkswagen/polo/volkswagen-polo.jpg?v=20"
car8 = Car.new(title: "VW Polo - nice and clean",
           brand: "VW",
           model: "Polo",
           year: 2012,
           price: 30.00,
           description: "Wonderful to drive. In perfect condition",
           available: true,
           address: "Wembley Stadium, London, HA9 0WS",
           user: User.third
           )
car8.remote_photo_url = url
car8.save
car8_id = car8.id


url = "https://cdn2.carbuyer.co.uk/sites/carbuyer_d7/files/5-series-01.jpg"
car9 = Car.new(title: "BMW 5 Series",
           brand: "BMW",
           model: "5 Series",
           year: 2016,
           price: 25.00,
           description: "Wonderful to drive. In perfect condition",
           available: true,
           address: "Wembley Stadium, London, HA9 0WS",
           user: User.third
           )
car9.remote_photo_url = url
car9.save
car9_id = car9.id

url = "https://upload.wikimedia.org/wikipedia/commons/d/d6/Bevan_Bros_coach_%28KDD_38%29%2C_2011_Bristol_Vintage_Bus_Group_open_day.jpg"
car10 = Car.new(title: "Very spacious wagon bus",
           brand: "Rambler",
           model: "Vintage Wagon Bus",
           year: 1988,
           price: 50.00,
           description: "Wonderful to drive. In perfect condition",
           available: true,
           address: "Old Kent Road, London",
           user: User.third
           )
car10.remote_photo_url = url
car10.save
car10_id = car10.id

review1 = Review.new(content: "Reliable drive. Onwner was friendly", rating: 4, car_id: car1_id)
review1.save


review2 = Review.new(content: "We just came back from one amazing trip and the wagon was very roomy for all of us. If you need a very clean wagon bus for you and your family or friends just book it, I really recommend it.", rating: 4, car_id: car10_id)
review2.save

review3 = Review.new(content: "Reliable drive. Would hire again", rating: 4, car_id: car2_id)
review3.save

review4 = Review.new(content: "Reliable drive. Pleasure from start to finish", rating: 4, car_id: car3_id)
review4.save

review5 = Review.new(content: "Reliable drive. Would definitely rent again", rating: 4, car_id: car4_id)
review5.save

review6 = Review.new(content: "Reliable drive. Loved renting this car", rating: 4, car_id: car5_id)
review6.save

puts "Created new seed!"
