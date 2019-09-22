class HomeController < ApplicationController
    include CurrentCart
    before_action :set_cart, only: [:index]
    
    def index
        @items = Item.all
        @item_order = ItemOrder.where("order_id = ?", @order.id)
        @subscriber = Subscriber.new
        @categories = Category.all
    end
end
