class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def total
    sum = 0
    self.item_orders.each do |order|
      sum += (order.item.price.round(2))*order.quantity
   end
     return sum
  end
  
end
