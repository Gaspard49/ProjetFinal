class HomeController < ApplicationController
    def index
        @items = Item.all
        @subscriber = Subscriber.new
    end
end
