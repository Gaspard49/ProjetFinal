module OrderHelper
    def sum_quantity_of_items(order)
        sum = 0
        order.item_orders.each do |i|
            sum += i.quantity
        end
        return sum
    end
end
