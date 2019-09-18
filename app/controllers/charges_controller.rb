class ChargesController < ApplicationController
  include CurrentCart
  before_action :set_cart, only: [:create, :new]
  after_action :after_payment, only: [:create]
  after_action :order_send, only: [:create]

  def new
    @user = current_user
  end
  
  def create
    # Amount in cents
    @user = current_user
    @amount = @order.total * 100
    @amount = @amount.to_i
  
    customer = Stripe::Customer.create({
      email: params[:stripeEmail],
      source: params[:stripeToken],
    })
  
    charge = Stripe::Charge.create({
      customer: customer.id,
      amount: @amount,
      description: 'Rails Stripe customer',
      currency: 'eur',
    })
  
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end

  private

  def order_send
    UserMailer.order_email(@user).deliver_now
  end

  def after_payment
    @order.status = false
    @order.save
  end

end