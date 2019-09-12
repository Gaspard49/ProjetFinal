class OrdersController < ApplicationController

    include CurrentCart
    before_action :set_cart, only: [:create]

    def create 
        item = Item.find(params[:format])
        @order_item = @order.item_orders.new(item: item)

        #ItemOrder.create(order_id: current_user.orders.where(status: false), item_id: params[:format])
        redirect_to root_path
    end
    
end
