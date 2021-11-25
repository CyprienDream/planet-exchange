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

Activity.destroy_all
Category.destroy_all
ItemMaterial.destroy_all
Material.destroy_all
ActivityItem.destroy_all
ItemStorage.destroy_all
Storage.destroy_all
Item.destroy_all
InterestUser.destroy_all
User.destroy_all

puts "destroyed stuff"
# users

barcelona_addresses = [
  "280 Bolivia, Barcelona, Spain",
  "10B Arriassa, Barcelona, Spain",
  "5 Casa Llarga, Barcelona, Spain",
  "2 Bernat Metge, Barcelona, Spain",
  "112 Camp Arriassa, Barcelona, Spain",
  "344 Concili de trento, Barcelona, Spain",
  "15 Camp Arriassa, Barcelona, Spain",
  "5 Bolivia, Barcelona, Spain",
  "40 Bolivia, Barcelona, Spain",
  "50 Gelida, Barcelona, Spain",
  "6 Ferradura, Barcelona, Spain",
  "2 Fernando de los Rios, Barcelona, Spain",
  "6 Ignasi Juliol, Barcelona, Spain",
  "6 Fluvia, Barcelona, Spain",
  "268 Fluvia, Barcelona, Spain",
  "105 Verneda, Barcelona, Spain",
  "2 Pau, Barcelona, Spain",
  "55 Paraguai, Barcelona, Spain",
  "16 Infancia, Barcelona, Spain",
  "44 Paraguai, Barcelona, Spain",
  "12 Paraguai, Barcelona, Spain",
  "12 Infancia, Barcelona, Spain",
  "12 Josep Pla, Barcelona, Spain",
  "187 Josep Pla, Barcelona, Spain",
  "187 Menorca, Barcelona, Spain",
  "2 Menorca, Barcelona, Spain",
  "56 Menorca, Barcelona, Spain",
  "79 Camelies, Barcelona, Spain",
  "4 Camil Oliveras, Barcelona, Spain",
  "12 Can Baro, Barcelona, Spain",
  "56 Cardener, Barcelona, Spain",
  "14 Cardener, Barcelona, Spain",
  "80 Cardener, Barcelona, Spain",
  "110 Carmel, Barcelona, Spain",
  "3 Carmel, Barcelona, Spain",
  "56 Cartagena, Barcelona, Spain",
  "400 Cartagena, Barcelona, Spain",
  "56 Cartagena, Barcelona, Spain",
  "22 Cartagena, Barcelona, Spain",
  "22 Rabassa, Barcelona, Spain",
  "22 Robi, Barcelona, Spain",
  "2 Sagrada Familia, Barcelona, Spain",
  "29 Cartagena, Barcelona, Spain",
  "18 Salinas, Barcelona, Spain",
  "2 Santa Creu, Barcelona, Spain",
  "22 Verdi, Barcelona, Spain",
  "22 Marianao, Barcelona, Spain",
  "22 Maignon, Barcelona, Spain",
  "2 Joanic, Barcelona, Spain",
  "22 Granja, Barcelona, Spain",
]

# users
 users = [
  {username: "Lucia" , bio: "I am your lovely neighbour who loves to make cakes, drink beers and talk about falafels", email:"lucia2@lucia.com" , password: "123456", password_confirmation: "123456", photo:"app/assets/images/Lucia01.jpg"},
  {username: "Oyivid", bio: "Hola amigos, I am new in town and enjoy getting sweaty either while baking, doing random DIY project or well, saunaing after some good sports session.", email: "amigo2@amigo.com", password: "123456", password_confirmation: "123456", photo: "app/assets/images/users/king.png"},
  {username: "Max", bio: "Gruss Got Freunde, I am new in town and very sick, but I also enjoy hoarding unnecessary shit so I am here to give it further, except of my Lederhose,. Always up for a beer and a good spanks.", email: "amigo24@amigo.com", password: "123456", password_confirmation: "123456", photo: "app/assets/images/users/max.jpg"},
  {username: "Cyprien", bio: "Hey there, I used to avoid people but now I am ready to make new friends. I would love to hang out over a beer and am ready to jump on new DIY project. Anybody around? ", email: "amigo55@amigo.com", password: "123456", password_confirmation: "123456", photo: "app/assets/images/users/cypri.jpg"},
  {username: "Maxime", bio: "To all art afasionados, I am Maxime and I greatly enjoy art and coffee. I do have a collection of coffee mashines at home which I am more than willing to share. Just hit me up if you need something. Hugs M!", email: "amigo22@amigo.com", password: "123456", password_confirmation: "123456", photo: "app/assets/images/users/T02NE0241-U02H2FE2KKJ-3ef0a62b55c5-512.jpg"},
 ]

users.each do |user|
user_in_db = User.new(user)
user_in_db.photo.attach( io: File.open(user[:photo]), filename: "user#{user_in_db.id}.png", content_type: "image/png")
user_in_db.save!

Storage.create!(user: user_in_db, address: barcelona_addresses.sample)
end


category_file1 = File.open("app/assets/images/doityourself-icon.svg")
category_file2 = File.open("app/assets/images/sports-icon.svg")
category_file3 = File.open("app/assets/images/camping-icon.svg")
category_file4 = File.open("app/assets/images/cooking-icon.svg")

category1 = Category.new({name: 'DIY'})
category1.photo.attach(io:category_file1, filename: 'doityourself-icon.svg', content_type:'image/svg')
category1.save!
category2 = Category.new({ name: 'Sport'})
category2.photo.attach(io:category_file2, filename: 'doityourself-icon.svg', content_type:'image/svg')
category2.save!
category3 = Category.new({ name: 'Camping'})
category3.photo.attach(io:category_file3, filename: 'doityourself-icon.svg', content_type:'image/svg')
category3.save!
category4 = Category.new({name:' Cooking'})
category4.photo.attach(io:category_file4, filename: 'doityourself-icon.svg', content_type:'image/svg')
category4.save!


activity1= Activity.new({name:"Installing shelves", category: category1})
activity1.photo.attach(io: File.open("app/assets/images/fa-solid_hammer.png"), filename: 'fi1.png', content_type: 'image/png')
activity1.save!

activity2= Activity.new({name:"Hanging art", category: category1})
activity2.photo.attach(io: File.open("app/assets/images/fa-solid_hammer.png"), filename: 'fi2.png', content_type: 'image/png')
activity2.save!

activity5= Activity.new({name:"Painting walls", category: category1})
activity5.photo.attach(io: File.open("app/assets/images/bx_bx-paint-roll.png"), filename: 'fi5.png', content_type: 'image/png')
activity5.save!

activity3= Activity.new({name:"Golf", category: category2})
activity3.photo.attach(io: File.open("app/assets/images/golf.png"), filename: 'fi3.png', content_type: 'image/png')
activity3.save!

activity4= Activity.new({name:"Basketball", category: category2})
activity4.photo.attach(io: File.open("app/assets/images/fluent_sport-basketball-24-filled.png"), filename: 'fi4.png', content_type: 'image/png')
activity4.save!

activity6= Activity.new({name:"Hockey", category: category2})
activity6.photo.attach(io: File.open("app/assets/images/ic_outline-sports-hockey.png"), filename: 'fi6.png', content_type: 'image/png')
activity6.save!

activity7= Activity.new({name:"Baseball", category: category2})
activity7.photo.attach(io: File.open("app/assets/images/ic_baseline-sports-baseball.png"), filename: 'fi7.png', content_type: 'image/png')
activity7.save!

activity8= Activity.new({name:"Volleyball", category: category2})
activity8.photo.attach(io: File.open("app/assets/images/volleyball.png"), filename: 'fi8.png', content_type: 'image/png')
activity8.save!

activity8= Activity.new({name:"Winter camping", category: category3})
activity8.photo.attach(io: File.open("app/assets/images/camping.png"), filename: 'fi8.png', content_type: 'image/png')
activity8.save!

activity9= Activity.new({name:"Summer camping", category: category3})
activity9.photo.attach(io: File.open("app/assets/images/summer_camping.png"), filename: 'fi9.png', content_type: 'image/png')
activity9.save!

activity10= Activity.new({name:"Baking a cake", category: category4})
activity10.photo.attach(io: File.open("app/assets/images/summer_camping.png"), filename: 'fi9.png', content_type: 'image/png')
activity10.save!

activity11= Activity.new({name:"Barbeque", category: category4})
activity11.photo.attach(io: File.open("app/assets/images/barbeque_utentils.png"), filename: 'fi11.png', content_type: 'image/png')
activity11.save!

activity12= Activity.new({name:"Party", category: category4})
activity12.photo.attach(io: File.open("app/assets/images/party_wine_glasses_cheering.png"), filename: 'fi12.png', content_type: 'image/png')
activity12.save!

activity13= Activity.new({name:"Making bread", category: category4})
activity13.photo.attach(io: File.open("app/assets/images/baking_bread.png"), filename: 'fi13.png', content_type: 'image/png')
activity13.save!

# items

items = [
  {name: "Whisk", avg_price: 2.5, avg_weight: 0.236, height: 0.29 , width: 0.06, photo: "app/assets/images/baking_whisk.png", item_materials: [{material: "Stainless Steel", proportion: 1}]},
  {name: "Spatula", avg_price: 2, avg_weight: 0.04, height: 0.29 , width: 0.058, photo: "app/assets/images/baking_spatula.png", item_materials: [{material: "ABS Plastic", proportion: 0.5}, {material: "Silicone Rubber", proportion: 0.5}]},
  {name: "Cake pan", avg_price: 8, avg_weight: 0.7926, height: 0.07 , width: 0.25, photo: "app/assets/images/baking_cake_pan.png", item_materials: [{material: "Carbon Steel", proportion: 1}]},
  {name: "Hand mixer", avg_price: 15, avg_weight: 1.129, height: 0.208, width: 0.156, photo: "app/assets/images/baking_hand_mixer.png", item_materials: [{material: "ABS Plastic", proportion:0.7}, {material: "Stainless Steel", proportion: 0.3}]},
  {name: "Drill", avg_price: 15, avg_weight: 1.53, height: 0.3 , width: 0.14, photo: "app/assets/images/diy_drill.png", item_materials: [{material: "ABS Plastic", proportion:0.7}, {material: "Steel",proportion: 0.3}]},
  {name: "Hammer", avg_price: 6, avg_weight: 0.73, height: 0.36, width: 0.048, photo: "app/assets/images/fa-solid_hammer.png", item_materials: [{material: "Wood", proportion: 0.6}, {material: "Steel", proportion: 0.4}]},
  {name: "Ladder", avg_price: 35, avg_weight: 4.3, height: 1.75, width: 0.8, photo: "app/assets/images/diy_ladder.png", item_materials: [{material:"Aluminium", proportion:1}]},
  {name: "Pot", avg_price: 21, avg_weight: 1.4, height: 0.165, width: 0.279, photo: "app/assets/images/cooking_item_big_pot.png", item_materials: [{material: "Stainless Steel", proportion: 1}]},
  {name: "Tape measure", avg_price: 5, avg_weight: 0.205, height: 0.12, width: 0.08, photo: "app/assets/images/diy_tape_measure.png", item_materials: [{material: "Steel", proportion: 0.5}, {material: "ABS Plastic", proportion: 0.5}]},
]

materials = [
  {name: "Stainless Steel", co2_per_kilo: 6.15},
  {name: "ABS Plastic", co2_per_kilo: 3.46},
  {name: "Silicone Rubber", co2_per_kilo: 4.02},
  {name: "Carbon Steel", co2_per_kilo: 1.46},
  {name: "Steel", co2_per_kilo: 1.77},
  {name: "Wood", co2_per_kilo: 0.17},
  {name: "Aluminium", co2_per_kilo: 8.14},
  {name: "Glass", co2_per_kilo: 0.85},
  {name: "Polyuretan flex plastic", co2_per_kilo: 4.99},
  {name: "Paper", co2_per_kilo: 2.42},
]

Material.create!(materials)

items.each do |item|
  item_in_db = Item.new(name: item[:name], avg_price: item[:avg_price], weight: item[:avg_weight], height: item[:height], width: item[:width])

  item[:item_materials].each do |material_i|
    puts material_i[:material]
    ItemMaterial.create!(item: item_in_db, material: Material.find_by_name(material_i[:material]) , percentage_weight: material_i[:proportion] )
  end
  photo = item[:photo].split("/")
  item_in_db.photo.attach(io: File.open(item[:photo]), filename: "#{photo.last}", content_type: "image/png")
  item_in_db.save!

  Storage.all.each do |storage|
    ItemStorage.create!(storage: storage, item: item_in_db )
  end
  item_in_db.carbon_footprint_calc
end


# materials = item[:item_materials].map { |item_material| Material.where(name:item_material[:material])}
#
# new_item = Item.new(name:item[:name],weight: item[:weight], avg_price: item[:avg_price])
# item[:materials].each do |material|
#   new_item_mat = Material.find_by_name(material)
#   ItemMaterial.create(item: new_item, material: new_item_mat, percentage_weight:)



# def calculate_co2(item))
#   # item has weight , materials (one or two) [{material:, proportion:}]
#   #(item[:weight]*item[:item_materials[0][:proportion]])*item[material[:co2_per_kilo] + (item[:weight]*item[:item_materials[1][:proportion]])*material[:co2_per_kilo]
# end
# item1 = Item.new({name: "Whisk", avg_price: 2.5 , carbon_footprint: 1.451 })
# item1.photo.attach(io: File.open("app/assets/images/baking_whisk.png"), filename: 'ip1.png', content_type: 'image/png')
# item1.save

# item2 = Item.new({name: "Spatula", avg_price: 2 , carbon_footprint: 0.149 })
# item2.photo.attach(io: File.open("app/assets/images/baking_spatula.png"), filename: 'ip2.png', content_type: 'image/png')
# item2.save

# item3 = Item.new({name: "Cake pan", avg_price: 8 , carbon_footprint: 1.18 })
# item3.photo.attach(io: File.open("app/assets/images/baking_cake_pan.png"), filename: 'ip3.png', content_type: 'image/png')
# item3.save

# item4 = Item.new({name: "Hand mixer", avg_price: 15 , carbon_footprint: 3.78 })
# item4.photo.attach(io: File.open("app/assets/images/baking_hand_mixer.png"), filename: 'ip4.png', content_type: 'image/png')
# item4.save

# item5 = Item.new({name: "Drill", avg_price: 15 , carbon_footprint: 4.51 })
# item5.photo.attach(io: File.open("app/assets/images/diy_drill.png"), filename: 'ip5.png', content_type: 'image/png')
# item5.save

# item6 = Item.new({name: "Hammer", avg_price: 6 , carbon_footprint: 0.59 })
# item6.photo.attach(io: File.open("app/assets/images/diy_hammer.png"), filename: 'ip6.png', content_type: 'image/png')
# item6.save

# item7 = Item.new({name: "Ladder", avg_price: 45 , carbon_footprint: 35 })
# item7.photo.attach(io: File.open("app/assets/images/diy_ladder.png"), filename: 'ip7.png', content_type: 'image/png')
# item7.save

# item8 = Item.new({name: "Pot", avg_price: 21 , carbon_footprint: 8.61 })
# item8.photo.attach(io: File.open("app/assets/images/cooking_item_big_pot.png"), filename: 'ip8.png', content_type: 'image/png')
# item8.save8

# materials


# material1 = Material.create({name: "Stainless Steel", co2_per_kilo: 6.15})
# material2 = Material.create({name: "ABS Plastic", co2_per_kilo: 3.46})
# material3 = Material.create({name: "Silicone Rubber", co2_per_kilo: 4.02})
# material4 = Material.create({name: "Carbon Steel", co2_per_kilo: 1.46})
# material5 = Material.create({name: "Steel", co2_per_kilo: 1.77})
# material6 = Material.create({name: "Wood", co2_per_kilo: 0.17})
# material7 = Material.create({name: "Aluminium", co2_per_kilo: 8.14})


# item_materials

# item_material1 = ItemMaterial.create({percentage_weight: 1, material: material1, item: item1})
# item_material2 = ItemMaterial.create({percentage_weight: 0.5, material_id: 2, item_id: 2})
# item_material3 = ItemMaterial.create({percentage_weight: 0.5, material_id: 3, item_id: 2})
# item_material4 = ItemMaterial.create({percentage_weight: 1, material_id: 4, item_id: 3})
# item_material5 = ItemMaterial.create({percentage_weight: 0.4, material_id: 1, item_id: 4})
# item_material6 = ItemMaterial.create({percentage_weight: 0.6, material_id: 2, item_id: 4})
# item_material7 = ItemMaterial.create({percentage_weight: 0.6, material_id: 2, item_id: 5})
# item_material8 = ItemMaterial.create({percentage_weight: 0.4, material_id: 2, item_id: 6})
# item_material9 = ItemMaterial.create({percentage_weight: 0.6, material_id: 2, item_id: 6})
# item_material9 = ItemMaterial.create({percentage_weight: 0.3, material_id: 1, item_id: 7})
# item_material9 = ItemMaterial.create({percentage_weight: 0.7, material_id: 5, item_id: 7})
# item_material9 = ItemMaterial.create({percentage_weight: 1, material_id: 1, item_id: 8})

# activity items for baking cake

# activity_item1 = ActivityItem.create({activity_id: 10 , item_id: 1})
# activity_item2 = ActivityItem.create({activity_id: 10 , item_id: 2})
# activity_item3 = ActivityItem.create({activity_id: 10 , item_id: 3})
# activity_item4 = ActivityItem.create({activity_id: 10 , item_id: 4})


# interest

# interest1 = Interest.new({name:"Coffee"})
# interest1.photo.attach(io: File.open("app/assets/images/hobby_coffee.png"), filename: "iterest_image1.png" , content_type:"image/png")
# interest1.save

# interest2 = Interest.new({name:"Sweets"})
# interest2.photo.attach(io: File.open("app/assets/images/baking_item2.png"), filename: "iterest_image2.png" , content_type:"image/png")
# interest2.save

# interest3 = Interest.new({name:"Wine"})
# interest3.photo.attach(io: File.open("app/assets/images/interest_wine.jpg"), filename: "iterest_image3.png" , content_type:"image/png")
# interest3.save

# interest4 = Interest.new({name:"Beer"})
# interest4.photo.attach(io: File.open("app/assets/images/interest_beer2.jpg"), filename: "iterest_image4.png" , content_type:"image/png")
# interest4.save

# interest5 = Interest.new({name:"Cinema"})
# interest5.photo.attach(io: File.open("app/assets/images/interest_cinema.png"), filename: "iterest_image5.png" , content_type:"image/png")
# interest5.save

# # user interest

# interest_user1 = InterestUser.create({interest_id: 5 , user_id: 1})
# interest_user2 = InterestUser.create({interest_id: 4 , user_id: 1})
# interest_user3 = InterestUser.create({interest_id: 2 , user_id: 1})
# interest_user4 = InterestUser.create({interest_id: 4 , user_id: 2})
# interest_user5 = InterestUser.create({interest_id: 1 , user_id: 2})
# interest_user6 = InterestUser.create({interest_id: 3 , user_id: 2})



# Activity.create([{name:"Installing shelves", category_id: 1}, {name:"Hanging Art", category_id: 1}, {name:"Snowboarding", category_id: 2}, {name:"Golf", category_id: 2}, {name:"Summer camping", category_id: 3}, {name:"Winter camping", category_id: 3}, {name:"Baking a cake", category_id: 4}, {name:"Making waffles", category_id: 4} ])

# interest_beer_file = File.open()

# interests = Interest.create([{name:"wine", }, {name:"beer"},{name:"music"},{name:"sweets"},{name:"cinema"}])
# user1 = User.new({username: "Lucia" , bio: "I am your lovely neighbour who loves to make cakes, drink beers and talk about falafels", email:"lucia2@lucia.com" , password: "123456", password_confirmation: "123456"})
# user1.photo.attach(io: File.open('app/assets/images/Lucia01.jpg'), filename: "user1.png",content_type: 'image/png')
# user1.save!

# user2 = User.new({username: "Oyivid", bio: "Hola amigos, I am new in town and enjoy getting sweaty either while baking, doing random DIY project or well, saunaing after some good sports session.", email: "amigo2@amigo.com", password: "123456", password_confirmation: "123456"})
# user2.photo.attach(io: URI.open("https://ca.slack-edge.com/T02NE0241-U02G1P39XDM-d2fe1bf286ac-512"), filename: "user2.png" , content_type: 'image/png')
# user2.save!

# user3 = User.new({username: "Max", bio: "Gruss Got Freunde, I am new in town and very sick, but I also enjoy hoarding unnecessary shit so I am here to give it further, except of my Lederhose,. Always up for a beer and a good spanks.", email: "amigo24@amigo.com", password: "123456", password_confirmation: "123456"})
# user2.photo.attach(io: URI.open("https://ca.slack-edge.com/T02NE0241-U02G1P39XDM-d2fe1bf286ac-512"), filename: "user3.png" , content_type: 'image/png')
# user3.save!

# storage_user1 = Storage.create!(user_id: user1.id, address: barcelona_addresses.sample)
# storage_user2 = Storage.create!(user_id: user2.id, address: barcelona_addresses.sample)
# storage_user3 = Storage.create!(user_id: user3.id,
# address: barcelona_addresses.sample
# )
