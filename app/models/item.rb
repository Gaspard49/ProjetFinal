class Item < ApplicationRecord
    has_one_attached :picture

    has_many :item_orders
    has_many :orders, through: :item_orders
end

