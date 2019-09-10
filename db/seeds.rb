# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
    User.create(email: Faker::Internet.email, password: "azertyuiop" )
end

10.times do
    Item.create(title: Faker::Lorem.words, description: Faker::Lorem.sentence(word_count: 3), price: Faker::Number.decimal(l_digits: 2), category: Faker::Team.name)
  end
  

  10.times do
    Order.create(users_id: User.all.sample.id)
  end

  10.times do
    ItemOrder.create(orders_id: Order.all.sample.id, items_id: Item.all.sample.id)
  end
  

  