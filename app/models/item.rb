class Item < ApplicationRecord
    has_one_attached :picture

    has_many :item_orders
    has_many :orders, through: :item_orders
    has_many :join_table_category_items
    has_many :categories, through: :join_table_category_items
    has_many :comments, as: :commentable

    validates :title, presence: true
    validates :price, presence: true
    validates :picture, presence: true
    validates :description, presence: true

    def self.search(term, page)
      if term
        where('name LIKE ?', "%#{term}%").paginate(page: page, per_page: 5).order('id DESC')
      else
        paginate(page: page, per_page: 10).order('id DESC') 
      end
    end

end

