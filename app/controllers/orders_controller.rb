class OrdersController < ApplicationController
    include CurrentCart
    before_action :set_cart, only: [:create]

    def create 
        item = Item.find(params[:format])
        @order.items << item
        redirect_to root_path
    end
end
    