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
Category.delete_all
JoinTableCategoryItem.delete_all

puts "Delete done!"
#Users Create
2.times do
  User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, date_of_birth: Faker::Date.birthday(min_age: 18, max_age: 65), city: Faker::Address.city, zip_code:  Faker::Address.zip_code, address: Faker::Address.street_address ,password: 'password', admin: false)
end
#Users Create

    #Admin Create

   User.create(first_name: 'Admin', last_name: 'Admin', email: 'admin@admin.com',password: 'admin123', admin: true)






  #Categories Shoes

    Category.create(name: 'Shoes')
    @category = Category.last
    @category.picture.attach(io: File.open('app/assets/images/home/hero-slide1.png'), filename: 'hero-slide1.png',  content_type: 'image/jpg')

    Item.create(title: 'Nike', description: 'Unique size: 40 (EU size)', price: 49.99)
    @item = Item.last
    @item.picture.attach(io: File.open('app/assets/images/product/nike.jpg'), filename: 'nike.jpg',  content_type: 'image/jpg')
    JoinTableCategoryItem.create(item_id: @item.id, category_id: @category.id)

    Item.create(title: 'Puma', description: 'Unique size: 40 (EU size)', price: 79.99)
    @item = Item.last
    @item.picture.attach(io: File.open('app/assets/images/product/puma.jpg'), filename: 'puma.jpg',  content_type: 'image/jpg')
    JoinTableCategoryItem.create(item_id: @item.id, category_id: @category.id)

    Item.create(title: 'Adidas', description: 'Unique size: 40 (EU size)', price: 99.99)
    @item = Item.last
    @item.picture.attach(io: File.open('app/assets/images/product/adidas_shoes.jpg'), filename: 'adidas_shoes.jpg',  content_type: 'image/jpg')
    JoinTableCategoryItem.create(item_id: @item.id, category_id: @category.id)

    Item.create(title: 'Reebok', description: 'Unique size: 40 (EU size)', price: 49.99)
    @item = Item.last
    @item.picture.attach(io: File.open('app/assets/images/product/reebok.jpg'), filename: 'reebok.jpg',  content_type: 'image/jpg')
    JoinTableCategoryItem.create(item_id: @item.id, category_id: @category.id)

    Item.create(title: 'Asics', description: 'Unique size: 40 (EU size)', price: 49.99)
    @item = Item.last
    @item.picture.attach(io: File.open('app/assets/images/product/asics.jpg'), filename: 'asics.jpg',  content_type: 'image/jpg')
    JoinTableCategoryItem.create(item_id: @item.id, category_id: @category.id)



    #Categories Shirt

    Category.create(name: 'Shirts')
    @category = Category.last
    @category.picture.attach(io: File.open('app/assets/images/home/hero-slide2.png'), filename: 'hero-slide2.png',  content_type: 'image/jpg')

    Item.create(title: 'Gap', description: 'Unique size: M (EU size), Unisex', price: 19.99)
    @item = Item.last
    @item.picture.attach(io: File.open('app/assets/images/product/gap_shirt.jpeg'), filename: 'gap_shirt.jpeg',  content_type: 'image/jpg')
    JoinTableCategoryItem.create(item_id: @item.id, category_id: @category.id)

    Item.create(title: 'Lacoste', description: 'Unique size: M (EU size), Unisex', price: 39.99)
    @item = Item.last
    @item.picture.attach(io: File.open('app/assets/images/product/lacoste_shirt.jpg'), filename: 'lacoste_shirt.jpg',  content_type: 'image/jpg')
    JoinTableCategoryItem.create(item_id: @item.id, category_id: @category.id)

    Item.create(title: 'Ben Sherman', description: 'Unique size: M (EU size), Unisex', price: 29.99)
    @item = Item.last
    @item.picture.attach(io: File.open('app/assets/images/product/ben_sherman.jpg'), filename: 'ben_sherman.jpg',  content_type: 'image/jpg')
    JoinTableCategoryItem.create(item_id: @item.id, category_id: @category.id)

    Item.create(title: 'Adidas', description: 'Unique size: M (EU size), Unisex', price: 9.99)
    @item = Item.last
    @item.picture.attach(io: File.open('app/assets/images/product/adidas_shirt.jpg'), filename: 'adidas_shirt.jpg',  content_type: 'image/jpg')
    JoinTableCategoryItem.create(item_id: @item.id, category_id: @category.id)

    Item.create(title: 'Ralph Lauren', description: 'Unique size: M (EU size), Unisex', price: 59.99)
    @item = Item.last
    @item.picture.attach(io: File.open('app/assets/images/product/ralph_loren.jpg'), filename: 'ralph_loren.jpg',  content_type: 'image/jpg')
    JoinTableCategoryItem.create(item_id: @item.id, category_id: @category.id)


    #Categories Pant

    Category.create(name: 'Pants')
    @category = Category.last
    @category.picture.attach(io: File.open('app/assets/images/home/hero-slide3.png'), filename: 'hero-slide3.png',  content_type: 'image/jpg')

    Item.create(title: 'Levis', description: 'Unique size: M (EU size), Unisex', price: 119.99)
    @item = Item.last
    @item.picture.attach(io: File.open('app/assets/images/product/levis_pant.jpg'), filename: 'levis_pant.jpg',  content_type: 'image/jpg')
    JoinTableCategoryItem.create(item_id: @item.id, category_id: @category.id)

    Item.create(title: 'Supreme', description: 'Unique size: M (EU size), Unisex', price: 299.99)
    @item = Item.last
    @item.picture.attach(io: File.open('app/assets/images/product/supreme_pant.jpg'), filename: 'supreme_pant.jpg',  content_type: 'image/jpg')
    JoinTableCategoryItem.create(item_id: @item.id, category_id: @category.id)

    Item.create(title: 'Diesel', description: 'Unique size: M (EU size), Unisex', price: 119.99)
    @item = Item.last
    @item.picture.attach(io: File.open('app/assets/images/product/diesel_pant.jpg'), filename: 'diesel_pant.jpg',  content_type: 'image/jpg')
    JoinTableCategoryItem.create(item_id: @item.id, category_id: @category.id)

    Item.create(title: 'Dsquared', description: 'Unique size: M (EU size), Unisex', price: 119.99)
    @item = Item.last
    @item.picture.attach(io: File.open('app/assets/images/product/dsquared_pant.jpg'), filename: 'dsquared_pant.jpg',  content_type: 'image/jpg')
    JoinTableCategoryItem.create(item_id: @item.id, category_id: @category.id)


 




  #Categories Create


=begin
5.times do
  Order.create(user_id: User.all.sample.id, status: false)
end
=end
