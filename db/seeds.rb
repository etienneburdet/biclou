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
florence.username = 'Florence'
florence.save!

raja = User.new
raja.email = 'raja@example.com'
raja.password = 'valid_password'
raja.password_confirmation = 'valid_password'
raja.username = 'Raja'
raja.save!

paul = User.new
paul.email = 'paul@example.com'
paul.password = 'valid_password'
paul.password_confirmation = 'valid_password'
paul.username = 'Paul'
paul.save!

mike = User.new
mike.email = 'mike@example.com'
mike.password = 'valid_password'
mike.password_confirmation = 'valid_password'
mike.username = 'Mike'
mike.save!

bolide = Bike.new
bolide.name = "Commuting Bike"
bolide.description = "Great for city rides"
bolide.price_per_hour = 7
bolide.address = "22 Boulevard de Reuilly, Paris"
bolide.user = florence
bolide.available = false
file = URI.open("https://images.unsplash.com/photo-1496104570434-e8719f0c1c02?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=944&q=80")
bolide.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
bolide.save!

vtt = Bike.new
vtt.name = "Mountain Bike"
vtt.description = "Perfect for your weekend adventures! 9 gears."
vtt.address = "Place de la République, Paris"
vtt.price_per_hour = 10
vtt.user = raja
file = URI.open("https://images.unsplash.com/photo-1511994298241-608e28f14fde?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80")
vtt.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
vtt.available = false
vtt.save!

citybike = Bike.new
citybike.name = "Road bike"
citybike.description = "Ideal for cruising through the traffic."
citybike.price_per_hour = 8
citybike.address = "16 villa Gaudelet, Paris"
citybike.price_per_hour = 10
citybike.user = paul
citybike.available = false
file = URI.open("https://images.unsplash.com/photo-1507035895480-2b3156c31fc8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80")
citybike.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
citybike.save!

manbike = Bike.new
manbike.name = "Road Bike"
manbike.description = "Light and fast, 7 gears."
manbike.address = "22 Boulevard de Reuilly, Paris"
manbike.price_per_hour = 8
manbike.user = florence
manbike.available = false
file = URI.open("https://images.unsplash.com/photo-1553978458-e039e4a68999?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80")
manbike.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
manbike.save!

kid = Bike.new
kid.name = "Kid Bike"
kid.description = "For kids 8-10yo"
kid.address = "22 Boulevard de Reuilly, Paris"
kid.price_per_hour = 4
kid.user = florence
kid.available = false
file = URI.open("https://images.unsplash.com/photo-1555481815-7ddb523c7c55?ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80")
kid.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
kid.save!

bmx = Bike.new
bmx.name = "BMX"
bmx.description = "Have fun learning new tricks"
bmx.address = "2 Rue Popincourt, Paris"
bmx.price_per_hour = 12
bmx.user = mike
bmx.available = false
file = URI.open("https://images.unsplash.com/photo-1508506774558-e4e623b07071?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80")
bmx.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
bmx.save!


rental_1 = Rental.new
rental_1.bike = vtt
rental_1.user = florence
rental_1.start_date = Time.now + 6000
rental_1.end_date = Time.now + 100000
rental_1.save!

# rental_2 = Rental.new
# rental_2.bike = citybike
# rental_2.user = florence
# rental_2.start_date = Time.local(2019, 7, 8)
# rental_2.end_date = Time.local(2019, 7, 9)
# rental_2.save!

# rental_3 = Rental.new
# rental_3.bike = bmx
# rental_3.user = florence
# rental_3.start_date = Time.local(2008, 8, 8)
# rental_3.end_date = Time.local(2008, 8, 9)
# rental_3.save!
