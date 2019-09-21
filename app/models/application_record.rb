class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def total
    sum = 0
    self.item_orders.each do |order|
      sum += order.item.price * order.quantity
   end
     return sum.round(2)
  end
  
end
