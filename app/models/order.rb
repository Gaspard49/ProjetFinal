class Order < ApplicationRecord
    has_many :item_orders
    has_many :items, through: :item_orders

    def total
        items.sum(&:price).round(2)
    end

    
end
