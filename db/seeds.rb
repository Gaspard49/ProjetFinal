# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
Item.delete_all
Order.delete_all
ItemOrder.delete_all

puts "Delete done!"
#Users Create
2.times do
  User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, date_of_birth: Faker::Date.birthday(min_age: 18, max_age: 65), city: Faker::Address.city, zip_code:  Faker::Address.zip_code, address: Faker::Address.street_address ,password: 'password', admin: false)
end
#Users Create

    #Admin Create

   User.create(first_name: 'Admin', last_name: 'Admin', email: 'admin@admin.com',password: 'admin123', admin: true)



   #Items Create


  #Categories Create

    Category.create(name: 'Shoes')
    @category = Category.last

    Item.create(title: 'Nike', description: 'Unique size: 40 (EU size)', price: 49.99)
    @item = Item.last
    @item.picture.attach(io: File.open('app/assets/images/product/nike.jpg'), filename: 'nike.jpg',  content_type: 'image/jpg')
    JoinTableCategoryItem.create(item_id: @item.id, category_id: @category.id)

    Item.create(title: 'Puma', description: 'Unique size: 40 (EU size)', price: 79.99)
    @item = Item.last
    @item.picture.attach(io: File.open('app/assets/images/product/puma.jpg'), filename: 'puma.jpg',  content_type: 'image/jpg')
    JoinTableCategoryItem.create(item_id: @item.id, category_id: @category.id)

    Item.create(title: 'Adidas', description: 'Unique size: 40 (EU size)', price: 49.99)
    @item = Item.last
    @item.picture.attach(io: File.open('app/assets/images/product/adidas.jpeg'), filename: 'adidas.jpeg',  content_type: 'image/jpg')
    JoinTableCategoryItem.create(item_id: @item.id, category_id: @category.id)

    Item.create(title: 'Nike', description: 'Unique size: 40 (EU size)', price: 49.99)
    @item = Item.last
    @item.picture.attach(io: File.open('app/assets/images/product/nike.jpg'), filename: 'nike.jpg',  content_type: 'image/jpg')
    JoinTableCategoryItem.create(item_id: @item.id, category_id: @category.id)

    Item.create(title: 'Nike', description: 'Unique size: 40 (EU size)', price: 49.99)
    @item = Item.last
    @item.picture.attach(io: File.open('app/assets/images/product/nike.jpg'), filename: 'nike.jpg',  content_type: 'image/jpg')
    JoinTableCategoryItem.create(item_id: @item.id, category_id: @category.id)






  #Categories Create


=begin
5.times do
  Order.create(user_id: User.all.sample.id, status: false)
end
=end
