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

anna = User.new
anna.email = 'anna@example.com'
anna.password = 'valid_password'
anna.password_confirmation = 'valid_password'
anna.username = 'Anna'
anna.save!

louis = User.new
louis.email = 'louis@example.com'
louis.password = 'valid_password'
louis.password_confirmation = 'valid_password'
louis.username = 'Louis'
louis.save!

andrea = User.new
andrea.email = 'andrea@example.com'
andrea.password = 'valid_password'
andrea.password_confirmation = 'valid_password'
andrea.username = 'Andrea'
andrea.save!

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
bolide.available = true
file = URI.open("https://images.unsplash.com/photo-1496104570434-e8719f0c1c02?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=944&q=80")
bolide.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
bolide.save!

veloville = Bike.new
veloville.name = "Commuting Bike"
veloville.description = "5 gears, with lights, 2 baskets"
veloville.price_per_hour = 6
veloville.address = "2 Rue Popincourt, Paris"
veloville.user = anna
veloville.available = true
file = URI.open("https://images.unsplash.com/photo-1551091016-1cdefa81989d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80")
veloville.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
veloville.save!

bici = Bike.new
bici.name = "Road Bike"
bici.description = "sport style, man size"
bici.price_per_hour = 8
bici.address = "56 Rue du Temple, Paris"
bici.user = louis
bici.available = true
file = URI.open("https://images.unsplash.com/photo-1502123909989-c9d05c43046a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")
bici.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
bici.save!

mybici = Bike.new
mybici.name = "Road Bike"
mybici.description = "sport style, man size"
mybici.price_per_hour = 8
mybici.address = "3 Boulevard du Temple, Paris"
mybici.user = andrea
mybici.available = true
file = URI.open("https://images.unsplash.com/photo-1549478877-629568e9deaf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1086&q=80")
mybici.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
mybici.save!

titi = Bike.new
titi.name = "Mountain Bike"
titi.description = "Very resistant, ideal for countryside adventures"
titi.price_per_hour = 8
titi.address = "6 Boulevard du Temple, Paris"
titi.user = andrea
titi.available = true
file = URI.open("https://images.unsplash.com/photo-1562684643-6b26dda63efb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1189&q=80")
titi.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
titi.save!

toto = Bike.new
toto.name = "Commuting Bike"
toto.description = "6 gears, small frontal basket"
toto.price_per_hour = 8
toto.address = "8 Rue Chapon, Paris"
toto.user = louis
toto.available = true
file = URI.open("https://images.unsplash.com/photo-1566663589567-6a44aef25c52?ixlib=rb-1.2.1&auto=format&fit=crop&w=1054&q=80")
toto.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
toto.save!

vtt = Bike.new
vtt.name = "Mountain Bike"
vtt.description = "Perfect for your weekend adventures! 9 gears."
vtt.address = "Place de la République, Paris"
vtt.price_per_hour = 10
vtt.user = raja
file = URI.open("https://images.unsplash.com/photo-1511994298241-608e28f14fde?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80")
vtt.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
vtt.available = true
vtt.save!

citybike = Bike.new
citybike.name = "Road bike"
citybike.description = "Ideal for cruising through the traffic."
citybike.price_per_hour = 8
citybike.address = "16 villa Gaudelet, Paris"
citybike.price_per_hour = 10
citybike.user = paul
citybike.available = true
file = URI.open("https://images.unsplash.com/photo-1507035895480-2b3156c31fc8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80")
citybike.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
citybike.save!

manbike = Bike.new
manbike.name = "Road Bike"
manbike.description = "Light and fast, 7 gears."
manbike.address = "22 Boulevard de Reuilly, Paris"
manbike.price_per_hour = 8
manbike.user = florence
manbike.available = true
file = URI.open("https://images.unsplash.com/photo-1553978458-e039e4a68999?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80")
manbike.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
manbike.save!

kid = Bike.new
kid.name = "Kid Bike"
kid.description = "For kids 8-10yo"
kid.address = "22 Boulevard de Reuilly, Paris"
kid.price_per_hour = 4
kid.user = florence
kid.available = true
file = URI.open("https://images.unsplash.com/photo-1555481815-7ddb523c7c55?ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80")
kid.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
kid.save!

bmx = Bike.new
bmx.name = "BMX"
bmx.description = "Have fun learning new tricks"
bmx.address = "2 Rue Popincourt, Paris"
bmx.price_per_hour = 12
bmx.user = mike
bmx.available = true
file = URI.open("https://images.unsplash.com/photo-1508506774558-e4e623b07071?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80")
bmx.photo.attach(io: file, filename: 'some-image.jpg', content_type: 'image/jpg')
bmx.save!


rental_1 = Rental.new
rental_1.bike = vtt
rental_1.user = florence
rental_1.start_date = Time.now + 6000
rental_1.end_date = Time.now + 9000
rental_1.save!

rental_2 = Rental.new
rental_2.bike = citybike
rental_2.user = florence
rental_2.start_date = Time.local(2020, 7, 8)
rental_2.end_date = Time.local(2020, 7, 9)
rental_2.save!

rental_3 = Rental.new
rental_3.bike = bmx
rental_3.user = florence
rental_3.start_date = Time.local(2020, 8, 8)
rental_3.end_date = Time.local(2020, 8, 9)
rental_3.save!