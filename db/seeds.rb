# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Booking.destroy_all
Desk.destroy_all
User.destroy_all
Coffeeshop.destroy_all

# Seeds for User
first_names = %w[John Sarah Kris]
last_names = %w[Brown Miller Green Shaw]

userA = User.create(email: 'herro@wagon.com', password: '123456', password_confirmation: '123456', first_name: first_names.sample, last_name: last_names.sample, photo_url: "http://www.sardiniauniqueproperties.com/wp-content/uploads/2015/10/Square-Profile-Pic-1-1.jpg")
userB = User.create(email: 'meow@wagon.com', password: '123456', password_confirmation: '123456', first_name: first_names.sample, last_name: last_names.sample, photo_url: "http://whysquare.co.nz/wp-content/uploads/2013/07/profile_square3-270x270.jpg")
userC = User.create(email: 'bleh@wagon.com', password: '123456', password_confirmation: '123456', first_name: first_names.sample, last_name: last_names.sample, photo_url: "https://soundsplash-app.s3.amazonaws.com/uploads/user/profile_picture/23/Profile_Pic_Square.jpg")
userD = User.create(email: 'woof@wagon.com', password: '123456', password_confirmation: '123456', first_name: first_names.sample, last_name: last_names.sample, photo_url: "http://mohamed-hamad.com/wp-content/uploads/2013/11/Profile-square.jpg")
userE = User.create(email: 'kris@wagon.com', password: '123456', password_confirmation: '123456', first_name: first_names.sample, last_name: last_names.sample, photo_url: "http://www.eleanorfrajka.com/images/profile_pic_square.jpg")

#Seeds for Coffeeshop
coffeeA = Coffeeshop.create(email: "nicecafe@wagon.com", name: "westberlin bar&shop", description: "some description", address: "Friedrichstraße 215, 10969 Berlin", website: "westberlin-bar-shop.de", password: '123456', password_confirmation: '123456')
coffeeB = Coffeeshop.create(email: "awesomecafe@wagon.com", name: "#HASHTAG Coffee Shop", description: "another description", address: "Krausenstraße 41, 10117 Berlin", website: "hashtagberlin.net", password: '123456', password_confirmation: '123456')
coffeeC = Coffeeshop.create(email: "decentcafe@wagon.com", name: "Refinery High End Coffee", description: "some more description", address: "Albrechtstraße 11B, 10117 Berlin", website: "refinerycoffee.de", password: '123456', password_confirmation: '123456')
coffeeD = Coffeeshop.create(email: "nicecafe@wagon.com", name: "taz Café", description: "some description", address: "Friedrichstraße 215, 10969 Berlin", website: "westberlin-bar-shop.de", password: '123456', password_confirmation: '123456')
coffeeE = Coffeeshop.create(email: "prettycafe@wagon.com", name: "Cafe Journale", description: "another description", address: "Lindenstraße 37 Berlin", website: "hashtagberlin.net", password: '123456', password_confirmation: '123456')
coffeeF = Coffeeshop.create(email: "justcafe@wagon.com", name: "Café Dix", description: "some more description", address: "Alte Jakobstraße 124-128 Berlin", website: "refinerycoffee.de", password: '123456', password_confirmation: '123456')
coffeeG = Coffeeshop.create(email: "coolcafe@wagon.com", name: "Hallesches Haus", description: "some description", address: "Tempelhofer Ufer 1 Berlin", website: "westberlin-bar-shop.de", password: '123456', password_confirmation: '123456')
coffeeH = Coffeeshop.create(email: "heycafe@wagon.com", name: "Café Anna Blume", description: "another description", address: "Kollwitzstraße 83 Berlin", website: "hashtagberlin.net", password: '123456', password_confirmation: '123456')
coffeeI = Coffeeshop.create(email: "yolocafe@wagon.com", name: "Café Hilde", description: "some more description", address: "Metzer Str. 22 Berlin", website: "refinerycoffee.de", password: '123456', password_confirmation: '123456')
coffeeJ = Coffeeshop.create(email: "cacafe@wagon.com", name: "Chupenga Burritos & Salads", description: "some description", address: "Charlottenstraße 4 Berlin", website: "westberlin-bar-shop.de", password: '123456', password_confirmation: '123456')
coffeeK = Coffeeshop.create(email: "yescafe@wagon.com", name: "Unicorn.Berlin Mitte", description: "another description", address: "Brunnenstraße 173, 10115 Berlin", website: "hashtagberlin.net", password: '123456', password_confirmation: '123456')
coffeeL = Coffeeshop.create(email: "nocafe@wagon.com", name: "Café P1", description: "some more description", address: "Panoramastraße 1, 10178 Berlin", website: "refinerycoffee.de", password: '123456', password_confirmation: '123456')
coffeeM = Coffeeshop.create(email: "whycafe@wagon.com", name: "Cafe Lucre", description: "some description", address: "Voßstraße 35 Berlin", website: "westberlin-bar-shop.de", password: '123456', password_confirmation: '123456')
coffeeN = Coffeeshop.create(email: "pleasecafe@wagon.com", name: "Volcano's Lava Rock Cafe", description: "another description", address: "Volcano, HI, United States", website: "hashtagberlin.net", password: '123456', password_confirmation: '123456')

# Seeds for Desk
t = Time.now.beginning_of_day
deskA = Desk.new(wifi: true, power_outlet: true, start_time: t + 9.hours, end_time: t +12.hours, cost: 5, capacity: 4)
deskA.coffeeshop = coffeeA
deskA.save

deskB = Desk.new(wifi: true, power_outlet: true, start_time: t + 13.hours, end_time: t + 17.hours, cost: 3, capacity: 5)
deskB.coffeeshop = coffeeA
deskB.save

deskC = Desk.new(wifi: true, power_outlet: true, start_time: t + 14.hours, end_time: t + 17.hours, cost: 10, capacity: 3)
deskC.coffeeshop = coffeeB
deskC.save

deskD = Desk.new(wifi: true, power_outlet: true, start_time: t + 20.hours, end_time: t + 23.hours, cost: 5, capacity: 4)
deskD.coffeeshop = coffeeB
deskD.save

deskE = Desk.new(wifi: true, power_outlet: false, start_time: t + 10.hours, end_time: t + 13.hours, cost: 5, capacity: 5)
deskE.coffeeshop = coffeeC
deskE.save

deskF = Desk.new(wifi: true, power_outlet: false, start_time: t + 10.hours, end_time: t + 13.hours, cost: 5, capacity: 5)
deskF.coffeeshop = coffeeD
deskF.save

deskG = Desk.new(wifi: true, power_outlet: false, start_time: t + 10.hours, end_time: t + 13.hours, cost: 5, capacity: 5)
deskG.coffeeshop = coffeeE
deskG.save

deskH = Desk.new(wifi: true, power_outlet: false, start_time: t + 10.hours, end_time: t + 13.hours, cost: 5, capacity: 5)
deskH.coffeeshop = coffeeF
deskH.save

deskI = Desk.new(wifi: true, power_outlet: false, start_time: t + 10.hours, end_time: t + 13.hours, cost: 5, capacity: 5)
deskI.coffeeshop = coffeeG
deskI.save

deskJ = Desk.new(wifi: true, power_outlet: false, start_time: t + 10.hours, end_time: t + 13.hours, cost: 5, capacity: 5)
deskJ.coffeeshop = coffeeH
deskJ.save

deskK = Desk.new(wifi: true, power_outlet: false, start_time: t + 10.hours, end_time: t + 13.hours, cost: 5, capacity: 5)
deskK.coffeeshop = coffeeI
deskK.save

# Seeds for Booking
bookA = Booking.new(start_time: t + 9.hours, end_time: t + 10.hours)
bookA.user = userA
bookA.desk = deskA
bookA.cost = (bookA.end_time - bookA.start_time)/3600 * bookA.desk.cost
bookA.save

bookB = Booking.new(start_time: t + 9.hours, end_time: t + 12.hours)
bookB.user = userB
bookB.desk = deskA
bookB.cost = (bookB.end_time - bookB.start_time)/3600 * bookB.desk.cost
bookB.save

bookC = Booking.new(start_time: t + 11.hours, end_time: t + 12.hours)
bookC.user = userC
bookC.desk = deskA
bookC.cost = (bookC.end_time - bookC.start_time)/3600 * bookC.desk.cost
bookC.save

bookD = Booking.new(start_time: t + 13.hours, end_time: t + 15.hours)
bookD.user = userD
bookD.desk = deskB
bookD.cost = (bookD.end_time - bookD.start_time)/3600 * bookD.desk.cost
bookD.save

bookE = Booking.new(start_time: t + 14.hours, end_time: t + 17.hours)
bookE.user = userE
bookE.desk = deskB
bookE.cost = (bookE.end_time - bookE.start_time)/3600 * bookE.desk.cost
bookE.save


