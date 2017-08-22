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

userA = User.create(email: 'herro@wagon.com', password: '123456', password_confirmation: '123456', first_name: first_names.sample, last_name: last_names.sample)
userB = User.create(email: 'meow@wagon.com', password: '123456', password_confirmation: '123456', first_name: first_names.sample, last_name: last_names.sample)
userC = User.create(email: 'bleh@wagon.com', password: '123456', password_confirmation: '123456', first_name: first_names.sample, last_name: last_names.sample)
userD = User.create(email: 'woof@wagon.com', password: '123456', password_confirmation: '123456', first_name: first_names.sample, last_name: last_names.sample)
userE = User.create(email: 'kris@wagon.com', password: '123456', password_confirmation: '123456', first_name: first_names.sample, last_name: last_names.sample)

#Seeds for Coffeeshop
coffeeA = Coffeeshop.create(email: "nicecafe@wagon.com", name: "Nice Cafe", description: "some description", address: "far from here", website: "www.nicecafe.com", password: '123456', password_confirmation: '123456')
coffeeB = Coffeeshop.create(email: "awesomecafe@wagon.com", name: "Awesome Cafe", description: "another description", address: "kinda closeby", website: "www.awesomecafe.com", password: '123456', password_confirmation: '123456')
coffeeC = Coffeeshop.create(email: "decentcafe@wagon.com", name: "Decent Cafe", description: "some more description", address: "right next door", website: "www.decentcafe.com", password: '123456', password_confirmation: '123456')

# Seeds for Desk
t = Time.now.beginning_of_hour
deskA = Desk.new(wifi: true, power_outlet: true, start_time: t + 2.hours, end_time: t + 5.hours, cost: 5, capacity: 4)
deskA.coffeeshop = coffeeA
deskA.save

deskB = Desk.new(wifi: true, power_outlet: true, start_time: t + 13.hours, end_time: t + 17.hours, cost: 3, capacity: 5)
deskB.coffeeshop = coffeeA
deskB.save

deskC = Desk.new(wifi: true, power_outlet: true, start_time: t + 1.hours, end_time: t + 4.hours, cost: 10, capacity: 3)
deskC.coffeeshop = coffeeB
deskC.save

deskD = Desk.new(wifi: true, power_outlet: true, start_time: t + 20.hours, end_time: t + 24.hours, cost: 5, capacity: 4)
deskD.coffeeshop = coffeeB
deskD.save

deskE = Desk.new(wifi: true, power_outlet: false, start_time: t + 2.hours, end_time: t + 4.hours, cost: 5, capacity: 5)
deskE.coffeeshop = coffeeC
deskE.save

# Seeds for Booking
bookA = Booking.new(start_time: t + 2.hours, end_time: t + 3.hours)
bookA.user = userA
bookA.desk = deskA
bookA.cost = (bookA.end_time - bookA.start_time)/3600 * bookA.desk.cost
bookA.save

bookB = Booking.new(start_time: t + 2.hours, end_time: t + 5.hours)
bookB.user = userB
bookB.desk = deskA
bookB.cost = (bookB.end_time - bookB.start_time)/3600 * bookB.desk.cost
bookB.save

bookC = Booking.new(start_time: t + 3.hours, end_time: t + 5.hours)
bookC.user = userC
bookC.desk = deskA
bookC.cost = (bookC.end_time - bookC.start_time)/3600 * bookC.desk.cost
bookC.save

bookD = Booking.new(start_time: t + 13.hours, end_time: t + 15.hours)
bookD.user = userD
bookD.desk = deskB
bookD.cost = (bookD.end_time - bookD.start_time)/3600 * bookD.desk.cost
bookD.save

bookE = Booking.new(start_time: t + 14.hours, end_time: t + 16.hours)
bookE.user = userE
bookE.desk = deskB
bookE.cost = (bookE.end_time - bookE.start_time)/3600 * bookE.desk.cost
bookE.save


