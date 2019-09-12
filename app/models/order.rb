class Order < ApplicationRecord
    has_many :item_orders
    has_many :items, through: :item_orders

# Decommenter quand le enum de order est cree, sinon le user recevra un email a chaque fois qu'il rempli son panier sans payer.

   # after_create :order_send

   # def order_send
   #   UserMailer.order_email(self).deliver_now
   # end

end
