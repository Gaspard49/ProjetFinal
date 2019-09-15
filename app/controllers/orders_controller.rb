class OrdersController < ApplicationController
    include CurrentCart
    before_action :set_cart, only: [:create, :index, :destroy]

    def index
    end

    def last
    end

    def create 
        item = Item.find(params[:format])
        @order.items << item
        redirect_to root_path
    end 

    def destroy
        item = Item.find(params[:id])
        @order.items.delete(item)
        render "index"
    end
end
    