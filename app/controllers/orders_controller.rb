class OrdersController < ApplicationController
  include CurrentCart
  before_action :set_cart, only: [:create, :index, :destroy, :new]

  def index
  end

  def new
      @item_order = ItemOrder.where("order_id = ?", @order.id)
      @items = Item.all
  end

  def show
      @order = Order.find(params[:id])
  end

  def create 
      item = Item.find(params[:format])
      if @order.items.include?(item)
          @i = ItemOrder.where("item_id = ?", item.id)
          @i.first.quantity += 1
          @i.first.save
      else
          @order.items << item
      end
      item.stock -= 1
      item.save
      flash[:notice] = "Your item has been added."
      redirect_to new_order_path
  end 

  def destroy    
      item = Item.find(params[:id])
      @item_order = ItemOrder.where("order_id = ?", @order.id)
      i = @item_order.where("item_id = ?", item.id)
      
      value = i.map { |x| x.quantity }
      @order.items.delete(item)
      item.stock += value[0]
      item.save
     
      flash[:alert] = "Your item has been removed."
      redirect_to new_order_path
  end

  
end