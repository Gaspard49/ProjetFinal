class HomeController < ApplicationController
    include CurrentCart
    before_action :set_cart, only: [:index]
    
    def index
        @items = Item.all
        @subscriber = Subscriber.new
        @categories = Category.all
    end
end
