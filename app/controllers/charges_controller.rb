class ChargesController < ApplicationController
  include CurrentCart
  before_action :set_cart, only: [:create, :new]

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
  
end
