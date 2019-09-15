module CurrentCart
    private
    
    def set_cart
        
        if current_user.orders.last.status != true
            @order = Order.create(user_id: current_user.id, status: true)
        else
            @order = Order.find_by(user_id: current_user.id, status: true)
        end
    end
    
end
