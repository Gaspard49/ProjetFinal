class OrdersController < ApplicationController
    include CurrentCart
    before_action :set_cart, only: [:create]

    def index
        puts "#" * 100
        puts "salut"
        puts "#" * 100
        
    end

    def show
        @item = Item.all
    end

    def create 
        item = Item.find(params[:format])
        @order.items << item
        redirect_to root_path
    end
end
    