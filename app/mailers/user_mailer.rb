class UserMailer < ApplicationMailer
  default from: 'no-reply@cloth-up.tk'
 
  def welcome_email(user)
    #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
    @user = user

    #on définit une variable @url qu'on utilisera dans la view d’e-mail
    @url  = 'https://projet-final-caen.herokuapp.com/users/sign_in' 

    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to: @user.email, subject: 'Welcome to Cloth-up!') 
  end

  def order_email(user)
    #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
    @user = user 
    @order = Order.find_by(user_id: @user.id, status: true)
    @item_order = ItemOrder.where("order_id = ?", @order.id)
    #on définit une variable @url qu'on utilisera dans la view d’e-mail
    @url  = 'https://projet-final-caen.herokuapp.com/users/sign_in'  

    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to: @user.email, subject: 'Your Order') 
  end

  def newsletter(subscriber)
    @subscriber = subscriber
    mail(to: @subscriber.email, subject: 'Newsletter !')
  end

end
