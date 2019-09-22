class HomeController < ApplicationController

    
    def index
        @items = Item.all
        @subscriber = Subscriber.new
        @categories = Category.all
    end
end
