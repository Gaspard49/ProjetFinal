class SubscribersController < ApplicationController
  def index
    @subscriber = Subscriber.new
  end

  def create
    @subscriber = Subscriber.new(subscriber_params)
      if @subscriber.save
        flash[:notice] = "You are successfully registered."
        redirect_to root_path
      else
        flash[:alert] = "Email already taken or not in the right format"
        redirect_to root_path
      end
  end
  
  private

  def subscriber_params
    params.permit(:email)
  end
 
end
