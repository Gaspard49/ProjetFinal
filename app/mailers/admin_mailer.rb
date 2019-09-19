class AdminMailer < ApplicationMailer
  default from: 'no-reply@cloth-up.tk'

    def order_paid(order_paid)
        @order = order_paid 
        @user = User.find(order_paid.user_id)          
        email_with_name = "admin43210@yopmail.com"  
        mail(to: email_with_name, subject: 'Order Paid !')
      end
end
