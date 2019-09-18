class Item < ApplicationRecord
    has_one_attached :picture

    has_many :item_orders
    has_many :orders, through: :item_orders
    has_many :join_table_category_items
    has_many :categories, through: :join_table_category_items
end

