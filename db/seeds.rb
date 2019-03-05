require 'faker'

20.times do
  item = Item.create(title: Faker::Creature::Cat.name, description: Faker::Lorem.paragraph, price: rand(1..100), image_url: "https://loremflickr.com/320/240?lock=#{rand(1..100)}")
end

puts"Fake Items : Generated"
#
# 10.times do
# 	user = User.create(email: Faker::Internet.email, password: "adminadmin")
# 	#cart = Cart.create(user_id: user.id)
# end

# puts "SEED 10.times to User"
#puts "SEED 10.times to Card"



#TEST SEED

# 15.times do
#   user_random = User.create!(email: Faker::Internet.email, password: Faker::Internet.password(8) )
# end
#
# puts"Fake Users : Generated"

i=1
20.times do
  cart = Cart.create(user_id: i  )
  i+=1
end

puts"Fake Carts : Generated"

20.times do
  cart_item = CartItem.create(cart_id: rand(1..Cart.count) , item_id: rand(1..Item.count)  )
end

puts"Fake Cart_items : Generated"
