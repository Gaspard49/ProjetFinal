class Order < ApplicationRecord
    enum status: [:unpaid, :paid]
    has_many :item_orders
    has_many :items, through: :item_orders

end
