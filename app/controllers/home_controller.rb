class HomeController < ApplicationController
    include CurrentCart
    
    def index
        @items = Item.all
        @subscriber = Subscriber.new
        @categories = Category.all
    end
end
