require 'faker'

10.times do
  item = Item.create(title: Faker::Creature::Cat.name, description: Faker::Lorem.paragraph, price: rand(1..100), image_url: "https://loremflickr.com/320/240?random=#{rand(1..10)}")
end
