# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Started seeding ..."
Booking.destroy_all
Desk.destroy_all
User.destroy_all
Coffeeshop.destroy_all

# Seeds for User
first_names = %w(John Sarah Kris Jane)
last_names = %w(Brown Miller Green Shaw)
occupations = %w(Junior-Developer Product-Manager Artist Web-Design-Student Industrial-Engineer Musician Business-Student Investment-Banker)

about_me1 = Faker::TheFreshPrinceOfBelAir.quote
about_me2 = Faker::TheFreshPrinceOfBelAir.quote
about_me3 = Faker::TheFreshPrinceOfBelAir.quote
about_me4 = Faker::TheFreshPrinceOfBelAir.quote
about_me5 = Faker::TheFreshPrinceOfBelAir.quote
about_mes = [about_me1, about_me2, about_me3, about_me4, about_me5]

userA = User.new(email: 'herro@wagon.com', password: '123456', password_confirmation: '123456', first_name: first_names.sample, last_name: last_names.sample, occupation: occupations.sample, about_me: about_mes.sample)
userA.save
userA.avatar_url = "http://www.sardiniauniqueproperties.com/wp-content/uploads/2015/10/Square-Profile-Pic-1-1.jpg"

userB = User.new(email: 'meow@wagon.com', password: '123456', password_confirmation: '123456', first_name: first_names.sample, last_name: last_names.sample, occupation: occupations.sample, about_me: about_mes.sample)
userB.save
userB.avatar_url = "http://whysquare.co.nz/wp-content/uploads/2013/07/profile_square3-270x270.jpg"

userC = User.new(email: 'bleh@wagon.com', password: '123456', password_confirmation: '123456', first_name: first_names.sample, last_name: last_names.sample, occupation: occupations.sample, about_me: about_mes.sample)
userC.save
userC.avatar_url = "https://soundsplash-app.s3.amazonaws.com/uploads/user/profile_picture/23/Profile_Pic_Square.jpg"

userD = User.new(email: 'woof@wagon.com', password: '123456', password_confirmation: '123456', first_name: first_names.sample, last_name: last_names.sample, occupation: occupations.sample, about_me: about_mes.sample)
userD.save
userD.avatar_url = "http://mohamed-hamad.com/wp-content/uploads/2013/11/Profile-square.jpg"

userE = User.new(email: 'kris@wagon.com', password: '123456', password_confirmation: '123456', first_name: first_names.sample, last_name: last_names.sample, occupation: occupations.sample, about_me: about_mes.sample)
userE.save
userE.avatar_url = "http://www.eleanorfrajka.com/images/profile_pic_square.jpg"


#Seeds for Coffeeshop
short_des1 = Faker::Movie.quote
short_des2 = Faker::Movie.quote
short_des3 = Faker::Movie.quote
short_des4 = Faker::Movie.quote
short_des5 = Faker::Movie.quote
des1 = Faker::Hipster.paragraph(4, false, 4)
des2 = Faker::Hipster.paragraph(4, false, 4)
des3 = Faker::Hipster.paragraph(4, false, 4)
des4 = Faker::Hipster.paragraph(4, false, 4)
des5 = Faker::Hipster.paragraph(4, false, 4)
short_descriptions = [short_des1, short_des2, short_des3, short_des4, short_des5]
descriptions = [des1, des2, des3, des4, des5]
picture_urls = %w(http://genylabs.typepad.com/.a/6a00d8345675df69e201bb08fc4a57970d-pi https://cdn.theculturetrip.com/wp-content/uploads/2016/02/lomi.jpg https://s-media-cache-ak0.pinimg.com/originals/27/f5/18/27f518825e4d377dbdb41ed1459d1d6e.jpg http://barcelonanavigator.com/wp-content/uploads/2014/07/Valkiria-Hub-Space-Cafe.jpg http://5www.ecestaticos.com/imagestatic/clipping/5ae/a7d/5aea7dfc12e0157136e975ce6592c46f/atlantico-la-bruta-ma-khin-cafe-cinco-restaurantes-con-sorpresa-del-brunch-gourmet-a-la-inspiracion-birmana.jpg?mtime=1446739348 http://hipparis.com/wp-content/uploads/2015/06/steel-011Lead.jpg http://bluefoxhr.co.uk/wp-content/uploads/2015/04/coffeeshop.jpg http://www.austinsentinel.com/wp-content/uploads/2016/07/Bennu-Coffeee.jpg https://bloximages.chicago2.vip.townnews.com/tucson.com/content/tncms/assets/v3/editorial/a/f0/af013458-c621-51ab-b36e-69540cd5d099/57716fc62d769.image.jpg?resize=1200%2C802 https://www.jlgrealestate.com/wp-content/uploads/2015/02/IMG_8704.jpg https://i1.wp.com/www.iamsterdam.com/media/locations-ndtrc/shopping/v-c-vintage-marie-charlotte-peze.jpg?ssl=1 http://zodesignart.com/wp-content/uploads/2017/05/follow-given-guidelines-to-choose-the-best-coffee-shop-design-and-beautiful-counter-for-of-how-.jpg http://cdn.nanilumi.com/2017/06/16/ideas-design-for-coffee-shop-room-decorating-home-trend-home-design.jpg https://www.laurelandwolf.com/blog/wp-content/uploads/2016/09/Coffee-Shops-Sightglass2.jpg)
coffeeA = Coffeeshop.create(email: "nicecafe@wagon.com", name: "westberlin bar&shop", description: descriptions.sample, address: "Friedrichstraße 215, 10969 Berlin", website: "westberlin-bar-shop.de", password: '123456', password_confirmation: '123456', short_description: short_descriptions.sample, picture_url: picture_urls.sample)
coffeeB = Coffeeshop.create(email: "awesomecafe@wagon.com", name: "#HASHTAG Coffee Shop", description: descriptions.sample, address: "Krausenstraße 41, 10117 Berlin", website: "hashtagberlin.net", password: '123456', password_confirmation: '123456', short_description: short_descriptions.sample, picture_url: picture_urls.sample)
coffeeC = Coffeeshop.create(email: "decentcafe@wagon.com", name: "Refinery High End Coffee", description: descriptions.sample, address: "Albrechtstraße 11B, 10117 Berlin", website: "refinerycoffee.de", password: '123456', password_confirmation: '123456', short_description: short_descriptions.sample, picture_url: picture_urls.sample)
coffeeD = Coffeeshop.create(email: "nicecafe@wagon.com", name: "taz Café", description: descriptions.sample, address: "Friedrichstraße 215, 10969 Berlin", website: "westberlin-bar-shop.de", password: '123456', password_confirmation: '123456', short_description: short_descriptions.sample, picture_url: picture_urls.sample)
coffeeE = Coffeeshop.create(email: "prettycafe@wagon.com", name: "Cafe Journale", description: descriptions.sample, address: "Lindenstraße 37 Berlin", website: "hashtagberlin.net", password: '123456', password_confirmation: '123456', short_description: short_descriptions.sample, picture_url: picture_urls.sample)
coffeeF = Coffeeshop.create(email: "justcafe@wagon.com", name: "Café Dix", description: descriptions.sample, address: "Alte Jakobstraße 124-128 Berlin", website: "refinerycoffee.de", password: '123456', password_confirmation: '123456', short_description: short_descriptions.sample, picture_url: picture_urls.sample)
coffeeG = Coffeeshop.create(email: "coolcafe@wagon.com", name: "Hallesches Haus", description: descriptions.sample, address: "Tempelhofer Ufer 1 Berlin", website: "westberlin-bar-shop.de", password: '123456', password_confirmation: '123456', short_description: short_descriptions.sample, picture_url: picture_urls.sample)
coffeeH = Coffeeshop.create(email: "heycafe@wagon.com", name: "Café Anna Blume", description: descriptions.sample, address: "Kollwitzstraße 83 Berlin", website: "hashtagberlin.net", password: '123456', password_confirmation: '123456', short_description: short_descriptions.sample, picture_url: picture_urls.sample)
coffeeI = Coffeeshop.create(email: "yolocafe@wagon.com", name: "Café Hilde", description: descriptions.sample, address: "Metzer Str. 22 Berlin", website: "refinerycoffee.de", password: '123456', password_confirmation: '123456', short_description: short_descriptions.sample, picture_url: picture_urls.sample)
coffeeJ = Coffeeshop.create(email: "cacafe@wagon.com", name: "Chupenga Burritos & Salads", description: descriptions.sample, address: "Charlottenstraße 4 Berlin", website: "westberlin-bar-shop.de", password: '123456', password_confirmation: '123456', short_description: short_descriptions.sample, picture_url: picture_urls.sample)
coffeeK = Coffeeshop.create(email: "yescafe@wagon.com", name: "Unicorn.Berlin Mitte", description: descriptions.sample, address: "Brunnenstraße 173, 10115 Berlin", website: "hashtagberlin.net", password: '123456', password_confirmation: '123456', short_description: short_descriptions.sample, picture_url: picture_urls.sample)
coffeeL = Coffeeshop.create(email: "nocafe@wagon.com", name: "Café P1", description: descriptions.sample, address: "Panoramastraße 1, 10178 Berlin", website: "refinerycoffee.de", password: '123456', password_confirmation: '123456', short_description: short_descriptions.sample, picture_url: picture_urls.sample)
coffeeM = Coffeeshop.create(email: "whycafe@wagon.com", name: "Cafe Lucre", description: descriptions.sample, address: "Voßstraße 35 Berlin", website: "westberlin-bar-shop.de", password: '123456', password_confirmation: '123456', short_description: short_descriptions.sample, picture_url: picture_urls.sample)
coffeeN = Coffeeshop.create(email: "pleasecafe@wagon.com", name: "Volcano's Lava Rock Cafe", description: descriptions.sample, address: "Volcano, HI, United States", website: "hashtagberlin.net", password: '123456', password_confirmation: '123456', short_description: short_descriptions.sample, picture_url: picture_urls.sample)

# Seeds for Desk
t = Time.now.beginning_of_day + 1.day
desk_names = ["LIV", "PETER PAN", "SEY", "TOY", "SAM", "MEOW", "HEY GUYS", "AUTOMAGICALLY"]

deskA = Desk.new(wifi: true, power_outlet: true, name: desk_names.sample, start_time: t + 9.hours, end_time: t +12.hours, cost: 5, capacity: 5)
deskA.coffeeshop = coffeeA
deskA.save

deskB = Desk.new(wifi: true, power_outlet: true, name: desk_names.sample, start_time: t + 13.hours, end_time: t + 17.hours, cost: 3, capacity: 5)
deskB.coffeeshop = coffeeA
deskB.save

deskC = Desk.new(wifi: true, power_outlet: true, name: desk_names.sample, start_time: t + 14.hours, end_time: t + 17.hours, cost: 10, capacity: 5)
deskC.coffeeshop = coffeeB
deskC.save

deskD = Desk.new(wifi: true, power_outlet: true, name: desk_names.sample, start_time: t + 20.hours, end_time: t + 23.hours, cost: 5, capacity: 5)
deskD.coffeeshop = coffeeB
deskD.save

deskE = Desk.new(wifi: true, power_outlet: false, name: desk_names.sample, start_time: t + 10.hours, end_time: t + 13.hours, cost: 5, capacity: 5)
deskE.coffeeshop = coffeeC
deskE.save

deskF = Desk.new(wifi: true, power_outlet: false, name: desk_names.sample, start_time: t + 10.hours, end_time: t + 13.hours, cost: 5, capacity: 5)
deskF.coffeeshop = coffeeD
deskF.save

deskG = Desk.new(wifi: true, power_outlet: false, name: desk_names.sample, start_time: t + 10.hours, end_time: t + 13.hours, cost: 5, capacity: 5)
deskG.coffeeshop = coffeeE
deskG.save

deskH = Desk.new(wifi: true, power_outlet: false, name: desk_names.sample, start_time: t + 10.hours, end_time: t + 13.hours, cost: 5, capacity: 5)
deskH.coffeeshop = coffeeF
deskH.save

deskI = Desk.new(wifi: true, power_outlet: false, name: desk_names.sample, start_time: t + 10.hours, end_time: t + 13.hours, cost: 5, capacity: 5)
deskI.coffeeshop = coffeeG
deskI.save

deskJ = Desk.new(wifi: true, power_outlet: false, name: desk_names.sample, start_time: t + 10.hours, end_time: t + 13.hours, cost: 5, capacity: 5)
deskJ.coffeeshop = coffeeH
deskJ.save

deskK = Desk.new(wifi: true, power_outlet: false, name: desk_names.sample, start_time: t + 10.hours, end_time: t + 13.hours, cost: 5, capacity: 5)
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

puts "Seeding finished!! Go back to work!"

