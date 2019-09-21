class ChargesController < ApplicationController
  include CurrentCart
  before_action :set_cart, only: [:create, :new]
  before_action :set_adress
  before_action :empty_cart
  after_action :after_payment, only: [:create]
  after_action :order_send, only: [:create]
  after_action :admin_order_paid, only: [:create]

  def new
    @user = current_user
  end

  def index
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

  def set_adress
    @user = current_user
    if @user.address == nil && @user.zip_code == nil && @user.city == nil
      flash[:alert] = "Please set your address, zip code and city to proceed your order."
      redirect_to edit_user_registration_path(@user)
    end
  end

  def order_send
    UserMailer.order_email(@user).deliver_now
  end

  def after_payment
    @order.status = false
    @order.save
  end

  def admin_order_paid
    AdminMailer.order_paid(@order).deliver_now
  end

  def empty_cart
    if @order.total == 0
      flash[:alert] = "Your cart is empty"
      redirect_to new_order_path
    end
  end

end