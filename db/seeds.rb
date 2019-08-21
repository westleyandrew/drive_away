# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
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
car = Car.new(title: "Lovely BMW",
           brand: "BMW",
           model: "X3",
           year: 2006,
           price: 80,
           description: "Very cool car",
           available: true,
           address: "19 Henryson Road, London, SE4 1HL",
           user: User.first
           )
car.remote_photo_url = url
car.save

url = "https://www.mercedes-benz.com.my/passengercars/mercedes-benz-cars/models/c-class/saloon/equipment/equipment_line_comparison/_jcr_content/comparisonslider/par/comparisonslide_7143/exteriorImage.MQ6.12.20181023075440.jpeg"
car = Car.new(title: "Cool Mercedes",
           brand: "Mercedes",
           model: "A220D",
           year: 2015,
           price: 300,
           description: "Very cool car in grey",
           available: true,
           address: "10 Downing Street, London",
           user: User.second
           )
car.remote_photo_url = url
car.save

url = "https://pictures.dealer.com/b/boardwalkferrari/0390/eda171ddf38db2597efffa0bcdb6c57ax.jpg"
car = Car.new(title: "Bright Yellow Ferrari",
           brand: "Ferrari",
           model: "Super Speedo",
           year: 2018,
           price: 1000,
           description: "Fast motor",
           available: true,
           address: "Peckham Rye Lane, Peckham",
           user: User.third
           )
car.remote_photo_url = url
car.save

url = "https://www.telegraph.co.uk/cars/images/2017/04/07/Micra-main_trans_NvBQzQNjv4BqLERBBIIOvNhzVX8wonGnHCmIF26WS0SDi7Vo6rnpH4o.JPG?imwidth=450"
car = Car.new(title: "Sporty Nissan Micra",
           brand: "Nissan",
           model: "Micra",
           year: 2006,
           price: 80,
           description: "Convenient runabout",
           available: true,
           address: "Knole Park, Sevenoaks",
           user: User.first
           )
car.remote_photo_url = url
car.save

url = "https://cdn.images.express.co.uk/img/dynamic/24/590x/New-Dacia-Sandero-Stepway-SE-Summit-2017-805693.jpg"
car = Car.new(title: "Dacia Sandero in good nick",
           brand: "Dacia",
           model: "Sandero",
           year: 2012,
           price: 10,
           description: "Not very cool but cheap",
           available: true,
           address: "Highgate Cemetery, London",
           user: User.second
           )
car.remote_photo_url = url
car.save

url = "https://amp.businessinsider.com/images/5a145f39f914c35a018b54fc-750-562.jpg"
car = Car.new(title: "Really quick Aston Martin",
           brand: "Aston Martin",
           model: "DB50",
           year: 2012,
           price: 10,
           description: "Not very cool but cheap",
           available: true,
           address: "Roehyde Way, Hatfield AL10 9AF",
           user: User.second
           )
car.remote_photo_url = url
car.save

url = "https://www.autocar.co.uk/sites/autocar.co.uk/files/volvo-v60-polestar-road-test-main002.jpg"
car = Car.new(title: "Dependable Volvo",
           brand: "Volvo",
           model: "220D",
           year: 2012,
           price: 10,
           description: "Chunky",
           available: true,
           address: "16 High St, Cookham, Maidenhead SL6 9SJ",
           user: User.second
           )
car.remote_photo_url = url
car.save

url = "https://auto.ndtvimg.com/car-images/big/volkswagen/polo/volkswagen-polo.jpg?v=20"
car = Car.new(title: "VW Polo - nice and clean",
           brand: "VW",
           model: "Polo",
           year: 2012,
           price: 10,
           description: "Bargain",
           available: true,
           address: "Wembley Stadium, London, HA9 0WS",
           user: User.third
           )
car.remote_photo_url = url
car.save



puts "Created new seed!"
