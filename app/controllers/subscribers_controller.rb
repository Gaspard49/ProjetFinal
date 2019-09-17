class SubscribersController < ApplicationController
  def index
    @subscriber = Subscriber.new
  end

  def create
    puts "@" * 100
    puts subscriber_params
    puts "@" * 100
    @subscriber = Subscriber.new(subscriber_params)
      if @subscriber.save
        cookies[:saved_lead] = true
        redirect_to root_path
      else
        redirect_to root_path
      end
  end
  
  private

  def subscriber_params
    params.require(:subscriber).permit(:email)
  end
end
