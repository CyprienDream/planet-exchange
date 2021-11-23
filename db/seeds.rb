# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# categories
require "open-uri"
require "pry-byebug"


category_file1 = File.open("app/assets/images/tools icon.png")
category_file2 = File.open("app/assets/images/sports icon.png")
category_file3 = File.open("app/assets/images/camping icon.png")
category_file4 = File.open("app/assets/images/cooking icon.png")

category1 = Category.new({name: 'DIY'})
category1.photo.attach(io:category_file1, filename: 'ci1.png', content_type:'image/png')
category1.save
category2 = Category.new({ name: 'Sport'})
category2.photo.attach(io:category_file2, filename: 'ci2.png', content_type:'image/png')
category2.save
category3 = Category.new({ name: 'Camping'})
category3.photo.attach(io:category_file3, filename: 'ci3.png', content_type:'image/png')
category3.save
category4 = Category.new({name:' Cooking'})
category4.photo.attach(io:category_file4, filename: 'ci4.png', content_type:'image/png')
category4.save


activity1= Activity.new({name:"Installing shelves", category_id: 1})
activity1.photo.attach(io: File.open("app/assets/images/fa-solid_hammer.png"), filename: 'fi1.png', content_type: 'image/png')
activity1.save

activity2= Activity.new({name:"Hanging art", category_id: 1})
activity2.photo.attach(io: File.open("app/assets/images/fa-solid_hammer.png"), filename: 'fi2.png', content_type: 'image/png')
activity2.save

activity5= Activity.new({name:"Painting walls", category_id: 1})
activity5.photo.attach(io: File.open("app/assets/images/bx_bx-paint-roll.png"), filename: 'fi5.png', content_type: 'image/png')
activity5.save

activity3= Activity.new({name:"Golf", category_id: 2})
activity3.photo.attach(io: File.open("app/assets/images/golf.png"), filename: 'fi3.png', content_type: 'image/png')
activity3.save

activity4= Activity.new({name:"Basketball", category_id: 2})
activity4.photo.attach(io: File.open("app/assets/images/fluent_sport-basketball-24-filled.png"), filename: 'fi4.png', content_type: 'image/png')
activity4.save

activity6= Activity.new({name:"Hockey", category_id: 2})
activity6.photo.attach(io: File.open("app/assets/images/ic_outline-sports-hockey.png"), filename: 'fi6.png', content_type: 'image/png')
activity6.save

activity7= Activity.new({name:"Baseball", category_id: 2})
activity7.photo.attach(io: File.open("app/assets/images/ic_baseline-sports-baseball.png"), filename: 'fi7.png', content_type: 'image/png')
activity7.save

activity8= Activity.new({name:"Volleyball", category_id: 2})
activity8.photo.attach(io: File.open("app/assets/images/volleyball.png"), filename: 'fi8.png', content_type: 'image/png')
activity8.save

activity8= Activity.new({name:"Winter camping", category_id: 3})
activity8.photo.attach(io: File.open("app/assets/images/camping.png"), filename: 'fi8.png', content_type: 'image/png')
activity8.save

activity9= Activity.new({name:"Summer camping", category_id: 3})
activity9.photo.attach(io: File.open("app/assets/images/summer_camping.png"), filename: 'fi9.png', content_type: 'image/png')
activity9.save

activity10= Activity.new({name:"Baking a cake", category_id: 4})
activity10.photo.attach(io: File.open("app/assets/images/summer_camping.png"), filename: 'fi9.png', content_type: 'image/png')
activity10.save

activity11= Activity.new({name:"Barbeque", category_id: 4})
activity11.photo.attach(io: File.open("app/assets/images/barbeque_utentils.png"), filename: 'fi11.png', content_type: 'image/png')
activity11.save

activity12= Activity.new({name:"Party", category_id: 4})
activity12.photo.attach(io: File.open("app/assets/images/party_wine_glasses_cheering.png"), filename: 'fi12.png', content_type: 'image/png')
activity12.save

activity13= Activity.new({name:"Making bread", category_id: 4})
activity13.photo.attach(io: File.open("app/assets/images/baking_bread.png"), filename: 'fi13.png', content_type: 'image/png')
activity13.save


# items

item1 = Item.new({name: "Whisk", avg_price: 2.5 , carbon_footprint: 1.451 })
item1.photo.attach(io: File.open("app/assets/images/baking_whisk.png"), filename: 'ip1.png', content_type: 'image/png')
item1.save

item2 = Item.new({name: "Spatula", avg_price: 2 , carbon_footprint: 0.149 })
item2.photo.attach(io: File.open("app/assets/images/baking_spatula.png"), filename: 'ip2.png', content_type: 'image/png')
item2.save

item3 = Item.new({name: "Cake pan", avg_price: 8 , carbon_footprint: 1.18 })
item3.photo.attach(io: File.open("app/assets/images/baking_cake_pan.png"), filename: 'ip3.png', content_type: 'image/png')
item3.save

item4 = Item.new({name: "Hand mixer", avg_price: 15 , carbon_footprint: 3.78 })
item4.photo.attach(io: File.open("app/assets/images/baking_hand_mixer.png"), filename: 'ip4.png', content_type: 'image/png')
item4.save

# materials

material1 = Material.create({name: "Stainless Steel", co2_per_kilo: 6.15})
material2 = Material.create({name: "ABS Plastic", co2_per_kilo: 3.46})
material3 = Material.create({name: "Silicone Rubber", co2_per_kilo: 4.02})
material4 = Material.create({name: "Carbon Steel", co2_per_kilo: 1.46})

# item_materials

item_material1 = ItemMaterial.create({percentage_weight: 1, material_id: 1, item_id: 1})
item_material2 = ItemMaterial.create({percentage_weight: 0.5, material_id: 2, item_id: 2})
item_material3 = ItemMaterial.create({percentage_weight: 0.5, material_id: 3, item_id: 2})
item_material4 = ItemMaterial.create({percentage_weight: 1, material_id: 4, item_id: 3})
item_material5 = ItemMaterial.create({percentage_weight: 0.4, material_id: 1, item_id: 4})
item_material6 = ItemMaterial.create({percentage_weight: 0.6, material_id: 2, item_id: 4})

# activity items for baking cake

activity_item1 = ActivityItem.create({activity_id: 10 , item_id: 1})
activity_item2 = ActivityItem.create({activity_id: 10 , item_id: 2})
activity_item3 = ActivityItem.create({activity_id: 10 , item_id: 3})
activity_item4 = ActivityItem.create({activity_id: 10 , item_id: 4})

# users

user1 = User.new({username: "Lucia" , bio: "I am your lovely neighbour who loves to make cakes, drink beers and talk about falafels", email:"lucia@lucia.com" , password: "123456", password_confirmation: "123456"})
user1.photo.attach(io: File.open('app/assets/images/Lucia01.jpg'), filename: "user1.png",content_type: 'image/png')
user1.save

user2 = User.new({username: "Oyivid", bio: "Hola amigos, I am new in town and enjoy getting sweaty either while baking, doing random DIY project or well, saunaing after some good sports session.", email: "amigo@amigo.com", password: "123456", password_confirmation: "123456"})
user2.photo.attach(io: URI.open("https://ca.slack-edge.com/T02NE0241-U02G1P39XDM-d2fe1bf286ac-512"), filename: "user2.png" , content_type: 'image/png')
user2.save

# interest

interest1 = Interest.new({name:"Coffee"})
interest1.photo.attach(io: File.open("app/assets/images/hobby_coffee.png"), filename: "iterest_image1.png" , content_type:"image/png")
interest1.save

interest2 = Interest.new({name:"Sweets"})
interest2.photo.attach(io: File.open("app/assets/images/baking_item2.png"), filename: "iterest_image2.png" , content_type:"image/png")
interest2.save

interest3 = Interest.new({name:"Wine"})
interest3.photo.attach(io: File.open("app/assets/images/interest_wine.jpg"), filename: "iterest_image3.png" , content_type:"image/png")
interest3.save

interest4 = Interest.new({name:"Beer"})
interest4.photo.attach(io: File.open("app/assets/images/interest_beer2.jpg"), filename: "iterest_image4.png" , content_type:"image/png")
interest4.save

interest5 = Interest.new({name:"Cinema"})
interest5.photo.attach(io: File.open("app/assets/images/interest_cinema.png"), filename: "iterest_image5.png" , content_type:"image/png")
interest5.save

# user interest

interest_user1 = InterestUser.create({interest_id: 5 , user_id: 1})
interest_user2 = InterestUser.create({interest_id: 4 , user_id: 1})
interest_user3 = InterestUser.create({interest_id: 2 , user_id: 1})
interest_user4 = InterestUser.create({interest_id: 4 , user_id: 2})
interest_user5 = InterestUser.create({interest_id: 1 , user_id: 2})
interest_user6 = InterestUser.create({interest_id: 3 , user_id: 2})



# Activity.create([{name:"Installing shelves", category_id: 1}, {name:"Hanging Art", category_id: 1}, {name:"Snowboarding", category_id: 2}, {name:"Golf", category_id: 2}, {name:"Summer camping", category_id: 3}, {name:"Winter camping", category_id: 3}, {name:"Baking a cake", category_id: 4}, {name:"Making waffles", category_id: 4} ])

# interest_beer_file = File.open()

# interests = Interest.create([{name:"wine", }, {name:"beer"},{name:"music"},{name:"sweets"},{name:"cinema"}])
