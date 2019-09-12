class ItemOrdersController < ApplicationController
    def create
        ItemOrder.create(order_id: current_user.orders.where('status = ?', unpaid), item_id: params[:format]) 
    end
end
