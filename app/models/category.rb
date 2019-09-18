class Category < ApplicationRecord
  has_many :join_table_category_items
  has_many :items, through: :join_table_category_items
end

