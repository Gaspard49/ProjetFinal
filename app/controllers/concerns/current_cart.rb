module CurrentCart
    private
    
    def set_cart
        
        @order = Order.find_by(id: session[:order_id]) || Order.create(user_id: current_user.id, status: true)
        session[:order_id] ||= @order.id
    end
    
end
