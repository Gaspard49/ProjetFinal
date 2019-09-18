class SubscribersController < ApplicationController
  def index
    @subscriber = Subscriber.new
  end

  def create
    @subscriber = Subscriber.new(subscriber_params)
      if @subscriber.save
        redirect_to root_path
      else
        redirect_to root_path
      end
  end
  
  private

  def subscriber_params
    params.permit(:email)
  end
 
end
