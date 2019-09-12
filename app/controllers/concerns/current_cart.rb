module CurrentCart
    private
    
    def set_cart
        @order = Order.find_by(id: session[:order_id]) || Order.create(user_id: current_user.id)
        session[:order_id] ||= @order.id
    end
end