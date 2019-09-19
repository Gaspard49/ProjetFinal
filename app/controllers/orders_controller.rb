class OrdersController < ApplicationController
    include CurrentCart
    before_action :set_cart, only: [:create, :index, :destroy, :new]

    def index
    end

    def new  
    end

    def show
        @order = Order.find(params[:id])
    end

    def create 
        item = Item.find(params[:format])
        @order.items << item
        item.stock -= 1
        item.save
        flash[:notice] = "Your item has been added."
        redirect_to root_path
    end 

    def destroy    
        item = Item.find(params[:id])
        
        #tab = @order.items.where("item_id = ?", item.id)
        #@order.items.delete(tab.uniq)
        @order.items.delete(item)

        item.stock += 1
        item.save
       
        flash[:alert] = "Your item has been removed."
        render "new"
    end
end
    