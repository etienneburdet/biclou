# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Rental.destroy_all
Bike.destroy_all
User.destroy_all

florence = User.new
florence.email = 'florence@example.com'
florence.password = 'valid_password'
florence.password_confirmation = 'valid_password'
florence.save!

raja = User.new
raja.email = 'raja@example.com'
raja.password = 'valid_password'
raja.password_confirmation = 'valid_password'
raja.save!

paul = User.new
paul.email = 'paul@example.com'
paul.password = 'valid_password'
paul.password_confirmation = 'valid_password'
paul.save!

bolide = Bike.new
bolide.name = "bolide"
bolide.description = "un bon vélo de course"
bolide.price_per_hour = 10
bolide.user = florence
bolide.available = false
file = URI.open("https://images.unsplash.com/photo-1507035895480-2b3156c31fc8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80")
bolide.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
bolide.save!

vtt = Bike.new
vtt.name = "vtt"
vtt.description = "vélo tout terrain"
vtt.price_per_hour = 10
vtt.user = raja
file = URI.open("https://images.unsplash.com/photo-1511994298241-608e28f14fde?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80")
vtt.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
vtt.available = false
vtt.save!

citybike = Bike.new
citybike.name = "citybike"
citybike.description = "for cruising the city"
citybike.price_per_hour = 10
citybike.user = paul
citybike.available = false
file = URI.open("https://images.unsplash.com/photo-1523740856324-f2ce89135981?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=798&q=80")
citybike.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
citybike.save!

enfant = Bike.new
enfant.name = "enfant"
enfant.description = "Un vélo enfant"
enfant.price_per_hour = 10
enfant.user = paul
enfant.available = false
file = URI.open("https://images.unsplash.com/photo-1518771109721-6dbe1116cfee?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=889&q=80")
enfant.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
enfant.save!

rental_1 = Rental.new
rental_1.bike = bolide
rental_1.user = raja
rental_1.start_date = Time.now
rental_1.end_date = Time.now + 3000
rental_1.save!

rental_2 = Rental.new
rental_2.bike = enfant
rental_2.user = raja
rental_2.start_date = Time.local(2019, 7, 8)
rental_2.end_date = Time.local(2019, 7, 9)
rental_2.save!

rental_3 = Rental.new
rental_3.bike = citybike
rental_3.user = paul
rental_3.start_date = Time.local(2008, 8, 8)
rental_3.end_date = Time.local(2008, 8, 9)
rental_3.save!
